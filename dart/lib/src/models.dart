/// Response models for the ASCII85 Encoder API.

/// API Response wrapper.
class Ascii85encoderResponse {
  final String status;
  final dynamic error;
  final Ascii85encoderData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  Ascii85encoderResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory Ascii85encoderResponse.fromJson(Map<String, dynamic> json) => Ascii85encoderResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? Ascii85encoderData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the ASCII85 Encoder API.

class Ascii85encoderData {
  String? originalText;
  String? encoded;
  String? format;
  num? originalLength;
  num? encodedLength;
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
