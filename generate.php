<?php

namespace JohnBillion\WPHooks;

require_once 'vendor/autoload.php';

$files = \WP_Parser\get_wp_files( 'vendor/wordpress/wordpress' );

function hooks_parse_files( $files, $root ) : array {
	$output = array();

	foreach ( $files as $filename ) {
		$file = new \WP_Parser\File_Reflector( $filename );

		$path = ltrim( substr( $filename, strlen( $root ) ), DIRECTORY_SEPARATOR );
		$file->setFilename( $path );

		$file->process();

		if ( ! empty( $file->uses['hooks'] ) ) {
			$output = array_merge( $output, \WP_Parser\export_hooks( $file->uses['hooks'] ) );
		}

		foreach ( $file->getFunctions() as $function ) {
			if ( ! empty( $function->uses ) ) {
				if ( ! empty( $function->uses['hooks'] ) ) {
					$output = array_merge( $output, \WP_Parser\export_hooks( $function->uses['hooks'] ) );
				}
			}
		}
	}

	$output = array_filter( $output, function( $hook ) {
		if ( ! empty( $hook['doc'] ) && ! empty( $hook['doc']['description'] ) ) {
			if ( 0 === strpos( $hook['doc']['description'], 'This filter is documented in ' ) ) {
				return false;
			}
			if ( 0 === strpos( $hook['doc']['description'], 'This action is documented in ' ) ) {
				return false;
			}
		}

		return true;
	} );

	usort( $output, function( array $a, array $b ) : int {
		return strcmp( $a['name'], $b['name'] );
	} );

	$output = array_values( $output );

	return $output;
}

$output = hooks_parse_files( $files, 'vendor/wordpress/wordpress' );
$json   = json_encode( $output, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES );
$result = file_put_contents( 'hooks.json', $json );
