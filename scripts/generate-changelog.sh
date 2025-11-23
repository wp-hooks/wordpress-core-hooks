#!/bin/bash

# Generate a markdown changelog for WordPress hooks
# Lists new actions, new filters, and parameter changes for specified versions

ACTIONS_FILE="hooks/actions.json"
FILTERS_FILE="hooks/filters.json"
OUTPUT_FILE="CHANGELOG.md"

# Extract all versions from both files and sort them in descending order
VERSIONS=($(jq -r '
    [.hooks[].doc.tags[] | select(.name == "since") | .content]
    | unique
    | map(select(test("^[0-9]+\\.[0-9]+\\.?[0-9]*$")))
    | map(split(".")[0:2] | join("."))
    | unique
    | .[]
' "$ACTIONS_FILE" "$FILTERS_FILE" | sort -u | while read v; do
    # Convert to sortable format and print
    major=$(echo "$v" | cut -d. -f1)
    minor=$(echo "$v" | cut -d. -f2)
    printf "%03d.%03d %s\n" "$major" "$minor" "$v"
done | sort -rn | cut -d' ' -f2))

echo "# WordPress Hooks Changelog" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "This document lists new actions, new filters, and parameter changes by WordPress version." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for VERSION in "${VERSIONS[@]}"; do
    echo "Processing version $VERSION..."

    echo "## WordPress $VERSION" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"

    # Find new actions (first @since tag matches the version)
    echo "### New Actions" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"

    NEW_ACTIONS=$(jq -r --arg ver "${VERSION}" '
        # Function to convert hook name to URL slug
        def slug: gsub("\\{\\$"; "") | gsub("\\}"; "") | gsub("\\$"; "") | gsub("->"; "-") | gsub("<"; "") | gsub(">"; "");
        .hooks[]
        | select(
            .doc.tags
            | map(select(.name == "since"))
            | .[0].content
            | startswith($ver)
        )
        | . as $hook
        | ($hook.doc.tags | map(select(.name == "since")) | .[0].content) as $since
        | ($hook.name | slug) as $url_slug
        | if ($since | test("^[0-9]+\\.[0-9]+\\.[1-9]")) then
            "- [`\($hook.name)`](https://developer.wordpress.org/reference/hooks/\($url_slug)/) (\($since)) - \($hook.doc.description)"
          else
            "- [`\($hook.name)`](https://developer.wordpress.org/reference/hooks/\($url_slug)/) - \($hook.doc.description)"
          end
    ' "$ACTIONS_FILE")

    if [ -n "$NEW_ACTIONS" ]; then
        echo "$NEW_ACTIONS" >> "$OUTPUT_FILE"
    else
        echo "_No new actions in this version._" >> "$OUTPUT_FILE"
    fi

    echo "" >> "$OUTPUT_FILE"

    # Find new filters (first @since tag matches the version)
    echo "### New Filters" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"

    NEW_FILTERS=$(jq -r --arg ver "${VERSION}" '
        # Function to convert hook name to URL slug
        def slug: gsub("\\{\\$"; "") | gsub("\\}"; "") | gsub("\\$"; "") | gsub("->"; "-") | gsub("<"; "") | gsub(">"; "");
        .hooks[]
        | select(
            .doc.tags
            | map(select(.name == "since"))
            | .[0].content
            | startswith($ver)
        )
        | . as $hook
        | ($hook.doc.tags | map(select(.name == "since")) | .[0].content) as $since
        | ($hook.name | slug) as $url_slug
        | if ($since | test("^[0-9]+\\.[0-9]+\\.[1-9]")) then
            "- [`\($hook.name)`](https://developer.wordpress.org/reference/hooks/\($url_slug)/) (\($since)) - \($hook.doc.description)"
          else
            "- [`\($hook.name)`](https://developer.wordpress.org/reference/hooks/\($url_slug)/) - \($hook.doc.description)"
          end
    ' "$FILTERS_FILE")

    if [ -n "$NEW_FILTERS" ]; then
        echo "$NEW_FILTERS" >> "$OUTPUT_FILE"
    else
        echo "_No new filters in this version._" >> "$OUTPUT_FILE"
    fi

    echo "" >> "$OUTPUT_FILE"

    # Find changes from both actions and filters
    echo "### Changes" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"

    ACTION_PARAM_CHANGES=$(jq -r --arg ver "${VERSION}" '
        # Function to convert hook name to URL slug
        def slug: gsub("\\{\\$"; "") | gsub("\\}"; "") | gsub("\\$"; "") | gsub("->"; "-") | gsub("<"; "") | gsub(">"; "");
        # Function to wrap $param style strings in <code> tags if not already wrapped
        def format_params: gsub("(?<p>\\$[a-z_]+)"; "<code>\(.p)</code>") | gsub("<code><code>"; "<code>") | gsub("</code></code>"; "</code>");
        .hooks[]
        | select(
            .doc.tags
            | any(.name == "since" and .description != null and (.content | startswith($ver)))
        )
        | . as $hook
        | ($hook.name | slug) as $url_slug
        | .doc.tags
        | map(select(.name == "since" and .description != null and (.content | startswith($ver))))
        | map(
            (.description | format_params) as $desc
            | if (.content | test("^[0-9]+\\.[0-9]+\\.[1-9]")) then
                "- [`\($hook.name)`](https://developer.wordpress.org/reference/hooks/\($url_slug)/) (\(.content)) - \($desc)"
            else
                "- [`\($hook.name)`](https://developer.wordpress.org/reference/hooks/\($url_slug)/) - \($desc)"
            end
        )
        | .[]
    ' "$ACTIONS_FILE")

    FILTER_PARAM_CHANGES=$(jq -r --arg ver "${VERSION}" '
        # Function to convert hook name to URL slug
        def slug: gsub("\\{\\$"; "") | gsub("\\}"; "") | gsub("\\$"; "") | gsub("->"; "-") | gsub("<"; "") | gsub(">"; "");
        # Function to wrap $param style strings in <code> tags if not already wrapped
        def format_params: gsub("(?<p>\\$[a-z_]+)"; "<code>\(.p)</code>") | gsub("<code><code>"; "<code>") | gsub("</code></code>"; "</code>");
        .hooks[]
        | select(
            .doc.tags
            | any(.name == "since" and .description != null and (.content | startswith($ver)))
        )
        | . as $hook
        | ($hook.name | slug) as $url_slug
        | .doc.tags
        | map(select(.name == "since" and .description != null and (.content | startswith($ver))))
        | map(
            (.description | format_params) as $desc
            | if (.content | test("^[0-9]+\\.[0-9]+\\.[1-9]")) then
                "- [`\($hook.name)`](https://developer.wordpress.org/reference/hooks/\($url_slug)/) (\(.content)) - \($desc)"
            else
                "- [`\($hook.name)`](https://developer.wordpress.org/reference/hooks/\($url_slug)/) - \($desc)"
            end
        )
        | .[]
    ' "$FILTERS_FILE")

    PARAM_CHANGES=$(echo -e "${ACTION_PARAM_CHANGES}\n${FILTER_PARAM_CHANGES}" | grep -v '^$' | sort)

    if [ -n "$PARAM_CHANGES" ]; then
        echo "$PARAM_CHANGES" >> "$OUTPUT_FILE"
    else
        echo "_No changes in this version._" >> "$OUTPUT_FILE"
    fi

    echo "" >> "$OUTPUT_FILE"
done

echo "Generated $OUTPUT_FILE"
