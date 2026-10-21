# ASCII85 Encoder API - PHP Package

ASCII85 Encoder encodes text into Base85 strings or decodes existing ASCII85 payloads back to plain text. Each request returns the converted output with original and processed character counts, while paid plans add custom formats and compression ratios.

## Installation

Install via Composer:

```bash
composer require apiverve/ascii85encoder
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Ascii85encoder\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'text' => 'Hello World',
    'action' => 'encode',
    'format' => 'standard'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Ascii85encoder\Client;
use APIVerve\Ascii85encoder\Exceptions\APIException;
use APIVerve\Ascii85encoder\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'Hello World', 'action' => 'encode', 'format' => 'standard']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "original_text": "Hello World",
    "encoded": "87cURD]i,\"Ebo7",
    "format": "standard",
    "original_length": 11,
    "encoded_length": 14,
    "compression_ratio": "127.27%"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/ascii85encoder?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/ascii85encoder?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/ascii85encoder?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
