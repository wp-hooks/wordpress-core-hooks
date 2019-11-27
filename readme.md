# WordPress Hooks Reference

All the actions and filters from WordPress core in machine-readable JSON format.

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

var_dump( $results );
```

## Usage in JavaScript

```js
// Get hooks as array of objects:
const actions = require('@johnbillion/wp-hooks/hooks/actions.json');
const filters = require('@johnbillion/wp-hooks/hooks/filters.json');

// Search for actions matching a string:
const search = 'menu';
const results = actions.filter( hook => ( null !== hook.name.match( search ) ) );

console.log(results);
```

## TypeScript Interfaces

The TypeScript interfaces can be found in [`interface/index.d.ts`](interface/index.d.ts). Usage:

```typescript
import { Hooks, Hook, Doc, Tags, Tag } from '@johnbillion/wp-hooks/interface';
```

## JSON Schema

The JSON schema can be found in [`hooks/schema.json`](hooks/schema.json).

## Regenerating the Hook Files

`composer generate`
