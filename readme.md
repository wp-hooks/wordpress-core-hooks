# wp-hooks

WordPress actions and filters in machine-readable JSON format.

## Actions and Filters

* Actions can be found in [`hooks/actions.json`](hooks/actions.json).
* Filters can be found in [`hooks/filters.json`](hooks/filters.json).

## Schema

* The JSON schema can be found in [`schema.json`](schema.json).

## Re-generating the Hooks

1. `composer install`
2. `composer generate`
3. `composer validate`
