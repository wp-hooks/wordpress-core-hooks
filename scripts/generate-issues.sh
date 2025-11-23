#!/bin/bash

# Generate a markdown document listing all hook data issues
# Uses the npm show:* scripts to gather data

OUTPUT_FILE="ISSUES.md"

echo "# WordPress Hooks Data Issues" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "This document lists known data quality issues in the hooks JSON files." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Duplicate Actions
echo "## Duplicate Actions" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

DUPLICATE_ACTIONS=$(jq -r '[reduce .hooks[].name as $n ({}; .[$n] += 1) | to_entries[] | select(.value > 1) | .key] | .[]' hooks/actions.json)

if [ -n "$DUPLICATE_ACTIONS" ]; then
    echo "$DUPLICATE_ACTIONS" | while read -r name; do
        echo "- \`$name\`" >> "$OUTPUT_FILE"
    done
else
    echo "_No duplicate actions._" >> "$OUTPUT_FILE"
fi

echo "" >> "$OUTPUT_FILE"

# Duplicate Filters
echo "## Duplicate Filters" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

DUPLICATE_FILTERS=$(jq -r '[reduce .hooks[].name as $n ({}; .[$n] += 1) | to_entries[] | select(.value > 1) | .key] | .[]' hooks/filters.json)

if [ -n "$DUPLICATE_FILTERS" ]; then
    echo "$DUPLICATE_FILTERS" | while read -r name; do
        echo "- \`$name\`" >> "$OUTPUT_FILE"
    done
else
    echo "_No duplicate filters._" >> "$OUTPUT_FILE"
fi

echo "" >> "$OUTPUT_FILE"

# Missing @since Tags
echo "## Missing @since Tags" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

MISSING_SINCE_ACTIONS=$(jq -r '.hooks[] | select(.doc.tags | map(.name) | contains(["since"]) | not) | "- `\(.name)` (\(.file))"' hooks/actions.json)
MISSING_SINCE_FILTERS=$(jq -r '.hooks[] | select(.doc.tags | map(.name) | contains(["since"]) | not) | "- `\(.name)` (\(.file))"' hooks/filters.json)

MISSING_SINCE=$(echo -e "${MISSING_SINCE_ACTIONS}\n${MISSING_SINCE_FILTERS}" | grep -v '^$' | sort)

if [ -n "$MISSING_SINCE" ]; then
    echo "$MISSING_SINCE" >> "$OUTPUT_FILE"
else
    echo "_No hooks with missing @since tags._" >> "$OUTPUT_FILE"
fi

echo "" >> "$OUTPUT_FILE"

# Empty Descriptions
echo "## Empty Descriptions" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

EMPTY_DESC_ACTIONS=$(jq -r '.hooks[] | select(.doc.description == "" or .doc.description == null) | "- `\(.name)` (\(.file))"' hooks/actions.json)
EMPTY_DESC_FILTERS=$(jq -r '.hooks[] | select(.doc.description == "" or .doc.description == null) | "- `\(.name)` (\(.file))"' hooks/filters.json)

EMPTY_DESC=$(echo -e "${EMPTY_DESC_ACTIONS}\n${EMPTY_DESC_FILTERS}" | grep -v '^$' | sort)

if [ -n "$EMPTY_DESC" ]; then
    echo "$EMPTY_DESC" >> "$OUTPUT_FILE"
else
    echo "_No hooks with empty descriptions._" >> "$OUTPUT_FILE"
fi

echo "" >> "$OUTPUT_FILE"

# Empty Variables
echo "## Empty Variables" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "Hooks with \`@param\` tags that have an empty variable name." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

EMPTY_VARS_ACTIONS=$(jq -r '.hooks[] | select(.doc.tags[] | select(.name == "param" and .variable == "")) | "- `\(.name)` (\(.file))"' hooks/actions.json 2>/dev/null | sort -u)
EMPTY_VARS_FILTERS=$(jq -r '.hooks[] | select(.doc.tags[] | select(.name == "param" and .variable == "")) | "- `\(.name)` (\(.file))"' hooks/filters.json 2>/dev/null | sort -u)

EMPTY_VARS=$(echo -e "${EMPTY_VARS_ACTIONS}\n${EMPTY_VARS_FILTERS}" | grep -v '^$' | sort -u)

if [ -n "$EMPTY_VARS" ]; then
    echo "$EMPTY_VARS" >> "$OUTPUT_FILE"
else
    echo "_No hooks with empty variables._" >> "$OUTPUT_FILE"
fi

echo "" >> "$OUTPUT_FILE"

# Param Count Mismatches
echo "## Param Count Mismatches" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "Hooks where the number of \`@param\` tags does not match the \`args\` count." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

PARAM_MISMATCH_ACTIONS=$(jq -r '.hooks[] | select(.args != ([.doc.tags[] | select(.name == "param")] | length)) | "- `\(.name)` — args: \(.args), params: \([.doc.tags[] | select(.name == "param")] | length) (\(.file))"' hooks/actions.json)
PARAM_MISMATCH_FILTERS=$(jq -r '.hooks[] | select(.args != ([.doc.tags[] | select(.name == "param")] | length)) | "- `\(.name)` — args: \(.args), params: \([.doc.tags[] | select(.name == "param")] | length) (\(.file))"' hooks/filters.json)

PARAM_MISMATCH=$(echo -e "${PARAM_MISMATCH_ACTIONS}\n${PARAM_MISMATCH_FILTERS}" | grep -v '^$' | sort)

if [ -n "$PARAM_MISMATCH" ]; then
    echo "$PARAM_MISMATCH" >> "$OUTPUT_FILE"
else
    echo "_No hooks with param count mismatches._" >> "$OUTPUT_FILE"
fi

echo "Generated $OUTPUT_FILE"
