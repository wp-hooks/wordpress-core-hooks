<?php

namespace JohnBillion\WPHooks;

require_once 'vendor/autoload.php';

list( , $source_dir, $target_dir ) = $argv;

if ( ! file_exists( $target_dir ) ) {
	printf(
		'The target directory "%s" does not exist. Please create it first.' . "\n",
		$target_dir
	);
	exit( 1 );
}

$files = \WP_Parser\get_wp_files( $source_dir );

function hooks_parse_files( $files, $root ) : array {
	$output = array();

	foreach ( $files as $filename ) {
		$file = new \WP_Parser\File_Reflector( $filename );
		$file_hooks = [];
		$path = ltrim( substr( $filename, strlen( $root ) ), DIRECTORY_SEPARATOR );
		$file->setFilename( $path );

		$file->process();

		if ( ! empty( $file->uses['hooks'] ) ) {
			$file_hooks = array_merge( $file_hooks, \WP_Parser\export_hooks( $file->uses['hooks'] ) );
		}

		foreach ( $file->getFunctions() as $function ) {
			if ( ! empty( $function->uses ) ) {
				if ( ! empty( $function->uses['hooks'] ) ) {
					$file_hooks = array_merge( $file_hooks, \WP_Parser\export_hooks( $function->uses['hooks'] ) );
				}
			}
		}

		foreach ( $file->getClasses() as $class ) {
			foreach ( $class->getMethods() as $method ) {
				if ( ! empty( $method->uses ) ) {
					if ( ! empty( $method->uses['hooks'] ) ) {
						$file_hooks = array_merge( $file_hooks, \WP_Parser\export_hooks( $method->uses['hooks'] ) );
					}
				}
			}
		}

		foreach ( $file_hooks as & $hook ) {
			$hook['file'] = $path;
		}

		$output = array_merge( $output, $file_hooks );
	}

	$output = array_filter( $output, function( array $hook ) : bool {
		if ( ! empty( $hook['doc'] ) && ! empty( $hook['doc']['description'] ) ) {
			if ( 0 === strpos( $hook['doc']['description'], 'This filter is documented in ' ) ) {
				return false;
			}
			if ( 0 === strpos( $hook['doc']['description'], 'This action is documented in ' ) ) {
				return false;
			}
		}

		// Special case hooks to ignore.
		$ignore_hooks = [
			'load-categories.php',
			'load-edit-link-categories.php',
			'load-edit-tags.php',
			'load-page-new.php',
			'load-page.php',
			'option_enable_xmlrpc',
			'pre_option_enable_xmlrpc',
		];

		if ( in_array( $hook['name'], $ignore_hooks, true ) ) {
			return false;
		}

		return true;
	} );

	$output = array_map( function( array $hook ) : array {
		unset( $hook['arguments'] );

		return $hook;
	}, $output );

	usort( $output, function( array $a, array $b ) : int {
		return strcmp( $a['name'], $b['name'] );
	} );

	return $output;
}

$output = hooks_parse_files( $files, $source_dir );

// Actions
$actions = array_values( array_filter( $output, function( array $hook ) : bool {
	return in_array( $hook['type'], [ 'action', 'action_reference' ], true );
} ) );

$result = file_put_contents( $target_dir . '/actions.json', json_encode( $actions, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES ) );

// Filters
$filters = array_values( array_filter( $output, function( array $hook ) : bool {
	return in_array( $hook['type'], [ 'filter', 'filter_reference' ], true );
} ) );

$result = file_put_contents( $target_dir . '/filters.json', json_encode( $filters, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES ) );
