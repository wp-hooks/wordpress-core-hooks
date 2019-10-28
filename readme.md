# wp-hooks

WordPress actions and filters in machine-readable JSON format.

## Actions and Filters

* Actions can be found in [`hooks/actions.json`](hooks/actions.json).
* Filters can be found in [`hooks/filters.json`](hooks/filters.json).

## All Hooks

* All actions and filters, including those that are deprecated, can be found in [`hooks/all.json`](hooks/all.json). You probably _don't_ need this.

## Schema

* The JSON schema can be found in [`schema.json`](schema.json).

## Re-generating the Hooks

* `composer install`
* `composer generate`
* `composer validate`
