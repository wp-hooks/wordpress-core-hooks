<?php

namespace JohnBillion\WPHooks;

require_once 'vendor/autoload.php';

use Opis\JsonSchema\{
    Validator, ValidationResult, ValidationError, Schema
};

$data = json_decode(file_get_contents('hooks/all.json'));
$schema = Schema::fromJsonString(file_get_contents('schema.json'));

$validator = new Validator();

/** @var ValidationResult $result */
$result = $validator->schemaValidation($data, $schema);

if ($result->isValid()) {
    echo '$data is valid', PHP_EOL;
} else {
    /** @var ValidationError $error */
    $error = $result->getFirstError();
    echo '$data is invalid', PHP_EOL;
    echo "Error: ", $error->keyword(), PHP_EOL;
    echo json_encode($error->keywordArgs(), JSON_PRETTY_PRINT), PHP_EOL;
}
