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

echo "Scanning for files...\n";

$files = \WP_Parser\get_wp_files( $source_dir );

printf(
	"Found %d files. Parsing hooks...\n",
	count( $files )
);

function hooks_parse_files( $files, $root ) : array {
	$output = array();

	foreach ( $files as $filename ) {
		$file = new \WP_Parser\File_Reflector( $filename );
		$file_hooks = [];
		$path = ltrim( substr( $filename, strlen( $root ) ), DIRECTORY_SEPARATOR );
		$file->setFilename( $path );

		$file->process();

		if ( ! empty( $file->uses['hooks'] ) ) {
			$file_hooks = array_merge( $file_hooks, export_hooks( $file->uses['hooks'], $path ) );
		}

		foreach ( $file->getFunctions() as $function ) {
			if ( ! empty( $function->uses ) && ! empty( $function->uses['hooks'] ) ) {
				$file_hooks = array_merge( $file_hooks, export_hooks( $function->uses['hooks'], $path ) );
			}
		}

		foreach ( $file->getClasses() as $class ) {
			foreach ( $class->getMethods() as $method ) {
				if ( ! empty( $method->uses ) && ! empty( $method->uses['hooks'] ) ) {
					$file_hooks = array_merge( $file_hooks, export_hooks( $method->uses['hooks'], $path ) );
				}
			}
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
			// Present in core for back-compat:
			'load-categories.php',
			'load-edit-link-categories.php',
			'load-edit-tags.php',
			'load-page-new.php',
			'load-page.php',
			'option_enable_xmlrpc',
			'pre_option_enable_xmlrpc',

			// Present in do_action_deprecated() and apply_filters_deprecated():
			'{$tag}',
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

/**
 * @param Hook_Reflector[] $hooks Array of hook references.
 * @param string           $path  The file path.
 *
 * @return array
 */
function export_hooks( array $hooks, string $path ) {
	$out = array();

	foreach ( $hooks as $hook ) {
		$doc      = \WP_Parser\export_docblock( $hook );
		$docblock = $hook->getDocBlock();

		$doc['long_description_html'] = $doc['long_description'];

		if ( $docblock ) {
			$doc['long_description'] = \WP_Parser\fix_newlines( $docblock->getLongDescription() );
		} else {
			$doc['long_description'] = '';
		}

		$out[] = array(
			'name'     => $hook->getName(),
			'file'     => $path,
			'line'     => $hook->getLineNumber(),
			'end_line' => $hook->getNode()->getAttribute( 'endLine' ),
			'type'     => $hook->getType(),
			'doc'      => $doc,
		);
	}

	return $out;
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

echo "Done\n";
