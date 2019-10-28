# wp-hooks

WordPress actions and filters in machine-readable JSON format.

**Note:** This is still a work in progress.

## Installation

* As a Composer package: `composer require johnbillion/wp-hooks`
* As an npm package: `npm install @johnbillion/wp-hooks`

## Actions and Filters

* Actions can be found in [`hooks/actions.json`](hooks/actions.json).
* Filters can be found in [`hooks/filters.json`](hooks/filters.json).

## Usage in PHP

```php
// Get hooks as JSON:
$actions_json = file_get_contents( 'vendor/johnbillion/wp-hooks/hooks/actions.json' );
$filters_json = file_get_contents( 'vendor/johnbillion/wp-hooks/hooks/filters.json' );

// Get hooks as PHP:
$actions = json_decode( $actions_json, true );
$filters = json_decode( $filters_json, true );

// Search for filters matching a string:
$search = 'permalink';
$results = array_filter( $filters, function( array $hook ) use ( $search ) {
    return ( false !== strpos( $hook['name'], $search ) );
} );
```

## Usage in JavaScript

```js
// Get hooks as array of objects:
const actions = require('@johnbillion/wp-hooks/hooks/actions.json');
const filters = require('@johnbillion/wp-hooks/hooks/filters.json');

// Search for actions matching a string:
const search = 'menu';
const results = actions.filter( function( hook ) {
    return ( null !== hook.name.match( search ) );
} );
```

## Schema

* The JSON schema can be found in [`schema.json`](schema.json).

## Implementation Details

The hook extraction component of the [WP Parser library](https://github.com/WordPress/phpdoc-parser) is used to scan files in order to generate the hook data. WordPress nightly is used so hooks are always up to date.

## Deprecated Actions and Filters

Deprecated actions and filters are also generated, in case they're needed.

* Deprecated actions can be found in [`hooks/actions-deprecated.json`](hooks/actions-deprecated.json).
* Deprecated filters can be found in [`hooks/filters-deprecated.json`](hooks/filters-deprecated.json).

## Regenerating the Hook Files

`composer generate`

## Validating the Hook Files

`composer validate-files`
