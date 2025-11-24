#!/bin/bash

# Generate a markdown changelog for WordPress hooks
# Lists new actions, new filters, and parameter changes for specified versions

ACTIONS_FILE="hooks/actions.json"
FILTERS_FILE="hooks/filters.json"
OUTPUT_FILE="CHANGELOG.md"

# jq function to convert hook name to URL slug
JQ_SLUG='def slug: gsub("\\{\\$"; "") | gsub("\\}"; "") | gsub("\\$"; "") | gsub("->"; "-") | gsub("<"; "") | gsub(">"; "");'

# Find new hooks where first @since tag matches version
find_new_hooks() {
    local file="$1"
    local version="$2"
    jq -r --arg ver "$version" "${JQ_SLUG}"'
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
    ' "$file"
}

# Find changes (hooks with @since tag with description matching version)
find_changes() {
    local file="$1"
    local version="$2"
    jq -r --arg ver "$version" "${JQ_SLUG}"'
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
            if (.content | test("^[0-9]+\\.[0-9]+\\.[1-9]")) then
                "- [`\($hook.name)`](https://developer.wordpress.org/reference/hooks/\($url_slug)/) (\(.content)) - \(.description)"
            else
                "- [`\($hook.name)`](https://developer.wordpress.org/reference/hooks/\($url_slug)/) - \(.description)"
            end
        )
        | .[]
    ' "$file"
}

# Write a section to output file
write_section() {
    local title="$1"
    local empty_message="$2"
    local results="$3"

    echo "### $title" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    if [ -n "$results" ]; then
        echo "$results" >> "$OUTPUT_FILE"
    else
        echo "_${empty_message}_" >> "$OUTPUT_FILE"
    fi
    echo "" >> "$OUTPUT_FILE"
}

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
echo "This document is automatically generated from the hooks extracted from WordPress and lists new actions, new filters, and parameter changes by version." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for VERSION in "${VERSIONS[@]}"; do
    echo "Processing version $VERSION..."

    echo "## WordPress $VERSION" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"

    NEW_ACTIONS=$(find_new_hooks "$ACTIONS_FILE" "$VERSION")
    write_section "New Actions" "No new actions in this version." "$NEW_ACTIONS"

    NEW_FILTERS=$(find_new_hooks "$FILTERS_FILE" "$VERSION")
    write_section "New Filters" "No new filters in this version." "$NEW_FILTERS"

    ACTION_CHANGES=$(find_changes "$ACTIONS_FILE" "$VERSION")
    FILTER_CHANGES=$(find_changes "$FILTERS_FILE" "$VERSION")
    CHANGES=$(echo -e "${ACTION_CHANGES}\n${FILTER_CHANGES}" | grep -v '^$' | sort)
    write_section "Changes" "No changes in this version." "$CHANGES"
done

echo "Generated $OUTPUT_FILE"
