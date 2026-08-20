# WordPress Hooks Data Issues

This document lists known data quality issues in the hooks JSON files.

## Duplicate Actions

- `manage_{$this->screen->id}_custom_column`

## Duplicate Filters

_No duplicate filters._

## Missing @since Tags

_No hooks with missing @since tags._

## Empty Descriptions

_No hooks with empty descriptions._

## Empty Variables

Hooks with `@param` tags that have an empty variable name.

_No hooks with empty variables._

## Invalid Variable Names

Hooks with `@param` tags where the variable is not a valid PHP variable name.

_No hooks with invalid variable names._

## Empty Param Descriptions

Hooks with `@param` tags that have an empty description.

- `block_core_navigation_render_inner_blocks` — $inner_blocks (wp-includes/blocks/navigation.php)
- `should_load_remote_block_patterns` — $should_load_remote (wp-includes/block-patterns.php)
- `the_weekday` — $the_weekday (wp-includes/general-template.php)

## Missing Original Since

Hooks where all `@since` tags have descriptions, indicating the original version is missing.

- `{$action}_prefilter` (wp-admin/includes/file.php)

## Param Count Mismatches

Hooks where the number of `@param` tags does not match the `args` count.

_No hooks with param count mismatches._

## Empty Param Types

Hooks with `@param` tags that have empty or missing type arrays.

_No hooks with empty param types._

## Invalid Param Types

Hooks with `@param` tags where types are not valid PHP docblock types.

- `block_editor_rest_api_preload_paths` — $preload_paths: `(string|string[])[]`  (wp-includes/block-editor.php)

