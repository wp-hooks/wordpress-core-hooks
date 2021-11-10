# WordPress Hooks Reference

All the actions and filters from WordPress core in machine-readable JSON format.

Last updated for WordPress 5.8.

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
$actions = json_decode( $actions_json, true )['hooks'];
$filters = json_decode( $filters_json, true )['hooks'];

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
const actions = require('@johnbillion/wp-hooks/hooks/actions.json').hooks;
const filters = require('@johnbillion/wp-hooks/hooks/filters.json').hooks;

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

## Importing in TypeScript

```typescript
import { hooks as actions } from '@johnbillion/wp-hooks/hooks/actions.json';
import { hooks as filters } from '@johnbillion/wp-hooks/hooks/filters.json';
```

## JSON Schema

The JSON schema can be found in [`hooks/schema.json`](hooks/schema.json).

## What can I use this for?

Anything that needs programmatic access to a list of available hooks, for example:

* [Autocomplete WordPress action and filter names in VS Code](https://github.com/johnbillion/vscode-wordpress-hooks).
* [Autocomplete WordPress action and filter names in Vim](https://github.com/Mte90/deoplete-wp-hooks).

## Regenerating the Hook Files

Install the dependencies:

`npm i && composer i`

Then run:

`composer generate`

Some scripts are available for checking the data:

* Check everything:
  - `npm run check`
* Find hooks with missing `@since` tags:
  - `jq '.hooks[] | . as $d | .doc .tags | map(.name) | select( contains(["since"]) | not ) | $d' hooks/filters.json`
  - `jq '.hooks[] | . as $d | .doc .tags | map(.name) | select( contains(["since"]) | not ) | $d' hooks/actions.json`
* Find hooks with incorrect number of `@param` tags:
  - `jq '.hooks[] | select( .args == ( .doc.tags | map(.name) | select( contains(["param"]) ) | length ) ) | .name' hooks/filters.json`
  - `jq '.hooks[] | select( .args == ( .doc.tags | map(.name) | select( contains(["param"]) ) | length ) ) | .name' hooks/actions.json`

## Hook Files for Plugins

Do you want the same hook files for your favourite plugins? The hook files in this repo are generated using [wp-hooks-generator](https://github.com/johnbillion/wp-hooks-generator). It can generate hook files for WordPress plugins and themes as well as core.

## Sponsors

The time that I spend maintaining this library and others is in part sponsored by:

[![Automattic](assets/gh/automattic.png)](https://automattic.com)

Plus all my kind sponsors on GitHub:

[![Sponsors](assets/gh/everyone.png)](https://github.com/sponsors/johnbillion)

[Click here to find out about supporting this library and my other WordPress development tools and plugins](https://github.com/sponsors/johnbillion).
