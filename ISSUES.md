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

## Param Count Mismatches

Hooks where the number of `@param` tags does not match the `args` count.

- `wp_default_autoload_value` — args: 4, params: 3 (wp-includes/option.php)
- `wp_next_scheduled` — args: 4, params: 3 (wp-includes/cron.php)
