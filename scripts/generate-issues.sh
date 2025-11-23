#!/bin/bash

# Generate a markdown document listing all hook data issues

OUTPUT_FILE="ISSUES.md"

# Helper function to run a jq query on both actions and filters, combine and dedupe results
run_check() {
    local query="$1"
    local actions_result filters_result
    actions_result=$(jq -r "$query" hooks/actions.json 2>/dev/null)
    filters_result=$(jq -r "$query" hooks/filters.json 2>/dev/null)
    echo -e "${actions_result}\n${filters_result}" | grep -v '^$' | sort -u
}

# Helper function to write a section to the output file
write_section() {
    local title="$1"
    local description="$2"
    local empty_message="$3"
    local results="$4"

    echo "## $title" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    if [ -n "$description" ]; then
        echo "$description" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
    if [ -n "$results" ]; then
        echo "$results" >> "$OUTPUT_FILE"
    else
        echo "_${empty_message}_" >> "$OUTPUT_FILE"
    fi
    echo "" >> "$OUTPUT_FILE"
}

echo "# WordPress Hooks Data Issues" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "This document lists known data quality issues in the hooks JSON files." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Duplicate Actions
DUPLICATE_ACTIONS=$(jq -r '[reduce .hooks[].name as $n ({}; .[$n] += 1) | to_entries[] | select(.value > 1) | .key] | .[] | "- `\(.)`"' hooks/actions.json)
write_section "Duplicate Actions" "" "No duplicate actions." "$DUPLICATE_ACTIONS"

# Duplicate Filters
DUPLICATE_FILTERS=$(jq -r '[reduce .hooks[].name as $n ({}; .[$n] += 1) | to_entries[] | select(.value > 1) | .key] | .[] | "- `\(.)`"' hooks/filters.json)
write_section "Duplicate Filters" "" "No duplicate filters." "$DUPLICATE_FILTERS"

# Missing @since Tags
MISSING_SINCE=$(run_check '.hooks[] | select(.doc.tags | map(.name) | contains(["since"]) | not) | "- `\(.name)` (\(.file))"')
write_section "Missing @since Tags" "" "No hooks with missing @since tags." "$MISSING_SINCE"

# Empty Descriptions
EMPTY_DESC=$(run_check '.hooks[] | select(.doc.description == "" or .doc.description == null) | "- `\(.name)` (\(.file))"')
write_section "Empty Descriptions" "" "No hooks with empty descriptions." "$EMPTY_DESC"

# Empty Variables
EMPTY_VARS=$(run_check '.hooks[] | select(.doc.tags[] | select(.name == "param" and .variable == "")) | "- `\(.name)` (\(.file))"')
write_section "Empty Variables" "Hooks with \`@param\` tags that have an empty variable name." "No hooks with empty variables." "$EMPTY_VARS"

# Invalid Variable Names
# Valid variable names match $[a-zA-Z_][a-zA-Z0-9_]* but not $this
INVALID_VAR_NAMES=$(run_check '.hooks[] | .name as $name | .file as $file | .doc.tags[] | select(.name == "param" and .variable != "" and .variable != null and ((.variable | test("^\\$[a-zA-Z_][a-zA-Z0-9_]*$") | not) or .variable == "$this")) | "- `\($name)` — \(.variable) (\($file))"')
write_section "Invalid Variable Names" "Hooks with \`@param\` tags where the variable is not a valid PHP variable name." "No hooks with invalid variable names." "$INVALID_VAR_NAMES"

# Empty Param Descriptions
EMPTY_PARAM_DESC=$(run_check '.hooks[] | .name as $name | .file as $file | .doc.tags[] | select(.name == "param" and (.content == "" or .content == null)) | "- `\($name)` — \(.variable) (\($file))"')
write_section "Empty Param Descriptions" "Hooks with \`@param\` tags that have an empty description." "No hooks with empty param descriptions." "$EMPTY_PARAM_DESC"

# Missing Original Since
# Exclude hooks with @since MU (3.0.0) as this indicates the original multisite version
MISSING_ORIG_SINCE=$(run_check '.hooks[] | select((.doc.tags | map(select(.name == "since" and .description == "MU (3.0.0)")) | length == 0) and (.doc.tags | map(select(.name == "since")) | length > 0) and (.doc.tags | map(select(.name == "since" and (.description == null or .description == ""))) | length == 0)) | "- `\(.name)` (\(.file))"')
write_section "Missing Original Since" "Hooks where all \`@since\` tags have descriptions, indicating the original version is missing." "No hooks with missing original since version." "$MISSING_ORIG_SINCE"

# Param Count Mismatches
# Exclude action_reference and filter_reference types as they use ref_array functions which always report args as 1
PARAM_MISMATCH=$(run_check '.hooks[] | select(.type != "action_reference" and .type != "filter_reference") | select(.args != ([.doc.tags[] | select(.name == "param")] | length)) | "- `\(.name)` — args: \(.args), params: \([.doc.tags[] | select(.name == "param")] | length) (\(.file))"')
write_section "Param Count Mismatches" "Hooks where the number of \`@param\` tags does not match the \`args\` count." "No hooks with param count mismatches." "$PARAM_MISMATCH"

# Empty Param Types
EMPTY_PARAM_TYPES=$(run_check '.hooks[] | .name as $name | .file as $file | .doc.tags[] | select(.name == "param" and (.types == null or .types == [] or (.types | length == 0))) | "- `\($name)` — \(.variable) (\($file))"')
write_section "Empty Param Types" "Hooks with \`@param\` tags that have empty or missing type arrays." "No hooks with empty param types." "$EMPTY_PARAM_TYPES"

# Invalid Param Types
# Valid types: primitives, class names (with optional leading backslash), array modifiers [], generic syntax like array<type>
INVALID_TYPES=$(run_check '.hooks[] | .name as $name | .file as $file | .doc.tags[] | select(.name == "param") | .variable as $var | .types[]? | select(test("^[a-zA-Z_\\\\][a-zA-Z0-9_\\\\]*(<[^>]+>)?(\\[\\])*$") | not) | "- `\($name)` — \($var): `\(.)`  (\($file))"')
write_section "Invalid Param Types" "Hooks with \`@param\` tags where types are not valid PHP docblock types." "No hooks with invalid param types." "$INVALID_TYPES"

echo "Generated $OUTPUT_FILE"
