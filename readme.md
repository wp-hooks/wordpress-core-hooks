# wp-hooks

WordPress actions and filters in machine-readable JSON format.

**Note:** This is still a work in progress.

## Actions and Filters

* Actions can be found in [`hooks/actions.json`](hooks/actions.json).
* Filters can be found in [`hooks/filters.json`](hooks/filters.json).

## Schema

* The JSON schema can be found in [`schema.json`](schema.json).

## Implementation Details

The hook extraction component of the [WP Parser library](https://github.com/WordPress/phpdoc-parser) is used to scan files in order to generate the hook data. WordPress nightly is used so hooks are always up to date.

## Re-generating the Hooks

1. `composer install`
2. `composer generate`
3. `composer validate-files`
