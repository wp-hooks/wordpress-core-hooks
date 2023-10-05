# WordPress Hooks Reference

All the actions and filters from WordPress core in machine-readable JSON format.

Last updated for WordPress 6.4.

## Installation

* As a Composer package for use in PHP:
    ```shell
    composer require wp-hooks/wordpress-core
    ```
* As an npm package for use in JavaScript or TypeScript:
    ```shell
    npm install @wp-hooks/wordpress-core
    ```

## Usage in PHP

```php
// Get hooks as JSON:
$actions_json = file_get_contents( 'vendor/wp-hooks/wordpress-core/hooks/actions.json' );
$filters_json = file_get_contents( 'vendor/wp-hooks/wordpress-core/hooks/filters.json' );

// Convert hooks to PHP:
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
const actions = require('@wp-hooks/wordpress-core/hooks/actions.json').hooks;
const filters = require('@wp-hooks/wordpress-core/hooks/filters.json').hooks;

// Search for actions matching a string:
const search = 'menu';
const results = actions.filter( hook => ( null !== hook.name.match( search ) ) );

console.log(results);
```

## Importing in TypeScript

```typescript
import { hooks as actions } from '@wp-hooks/wordpress-core/hooks/actions.json';
import { hooks as filters } from '@wp-hooks/wordpress-core/hooks/filters.json';
```

Interfaces for the components of the hooks can be imported too, if you need them:

```typescript
import { Hooks, Hook, Doc, Tags, Tag } from '@wp-hooks/wordpress-core/interface';
```

## Actions, Filters, and Schemas

* The actions can be found in [hooks/actions.json](hooks/actions.json)
* The filters can be found in [hooks/filters.json](hooks/filters.json)
* The JSON schema can be found in [hooks/schema.json](hooks/schema.json)
* The TypeScript interfaces can be found in [interface/index.d.ts](interface/index.d.ts)

## What can I use this for?

Anything that needs programmatic access to a list of available hooks, for example:

* [Autocomplete WordPress action and filter names in VS Code](https://github.com/johnbillion/vscode-wordpress-hooks)
* [Autocomplete WordPress action and filter names in Vim](https://github.com/Mte90/deoplete-wp-hooks)
* [WordPress plugin for Psalm](https://github.com/humanmade/psalm-plugin-wordpress)

## Regenerating the Hook Files

Change the `roots/wordpress-full` version in composer.json to the required WordPress version, or `dev-main` for nightly.

Install the dependencies:

```shell
npm i && composer i
```

Then run:

```shell
composer generate
```

Some scripts are available for checking the data:

* Check everything:
  ```shell
  npm run check
  ```
* Find hooks with missing `@since` tags:
  ```shell
  jq '.hooks[] | . as $d | .doc .tags | map(.name) | select( contains(["since"]) | not ) | $d' hooks/filters.json
  ```
  ```shell
  jq '.hooks[] | . as $d | .doc .tags | map(.name) | select( contains(["since"]) | not ) | $d' hooks/actions.json
  ```
* Find hooks with incorrect number of `@param` tags (not completely accurate, not sure why):
  ```shell
  jq '.hooks[] | select( .args == ( .doc.tags | map(.name) | select( contains(["param"]) ) | length ) ) | .name' hooks/filters.json
  ```
  ```shell
  jq '.hooks[] | select( .args == ( .doc.tags | map(.name) | select( contains(["param"]) ) | length ) ) | .name' hooks/actions.json
  ```

## Hook Files for Plugins

Do you want the same hook files for your favourite plugins? The hook files in this repo are generated using [wp-hooks-generator](https://github.com/wp-hooks/generator). It can generate hook files for WordPress plugins and themes as well as core.

## Sponsors

The time that I spend maintaining this library and others is in part sponsored by:

[![Automattic](assets/gh/automattic.png)](https://automattic.com)

Plus all my kind sponsors on GitHub:

[![Sponsors](assets/gh/everyone.png)](https://github.com/sponsors/johnbillion)

[Click here to find out about supporting this library and my other WordPress development tools and plugins](https://github.com/sponsors/johnbillion).
