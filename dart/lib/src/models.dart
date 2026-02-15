/// Response models for the ASCII85 Encoder API.

/// API Response wrapper.
class Ascii85encoderResponse {
  final String status;
  final dynamic error;
  final Ascii85encoderData? data;

  Ascii85encoderResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory Ascii85encoderResponse.fromJson(Map<String, dynamic> json) => Ascii85encoderResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? Ascii85encoderData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the ASCII85 Encoder API.

class Ascii85encoderData {
  String? originalText;
  String? encoded;
  String? format;
  int? originalLength;
  int? encodedLength;
  String? compressionRatio;

  Ascii85encoderData({
    this.originalText,
    this.encoded,
    this.format,
    this.originalLength,
    this.encodedLength,
    this.compressionRatio,
  });

  factory Ascii85encoderData.fromJson(Map<String, dynamic> json) => Ascii85encoderData(
      originalText: json['original_text'],
      encoded: json['encoded'],
      format: json['format'],
      originalLength: json['original_length'],
      encodedLength: json['encoded_length'],
      compressionRatio: json['compression_ratio'],
    );
}

class Ascii85encoderRequest {
  String text;
  String? action;
  String? format;

  Ascii85encoderRequest({
    required this.text,
    this.action,
    this.format,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
      if (action != null) 'action': action,
      if (format != null) 'format': format,
    };
}
