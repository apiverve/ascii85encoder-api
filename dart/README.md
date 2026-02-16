# ASCII85 Encoder API - Dart/Flutter Client

ASCII85 Encoder is a tool for encoding and decoding data using ASCII85 (also known as Base85) encoding. It supports both standard and btoa formats for efficient binary-to-text encoding with better compression than Base64.

[![pub package](https://img.shields.io/pub/v/apiverve_ascii85encoder.svg)](https://pub.dev/packages/apiverve_ascii85encoder)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [ASCII85 Encoder API](https://apiverve.com/marketplace/ascii85encoder?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_ascii85encoder: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_ascii85encoder/apiverve_ascii85encoder.dart';

void main() async {
  final client = Ascii85encoderClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'Hello World',
      'action': 'encode',
      'format': 'standard'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [ASCII85 Encoder API](https://apiverve.com/marketplace/ascii85encoder?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/ascii85encoder](https://docs.apiverve.com/ref/ascii85encoder?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
