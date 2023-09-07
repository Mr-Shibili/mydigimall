import 'dart:convert';

import 'dart:convert';

OtpResponse otpResponseFromJson(String str) => OtpResponse.fromJson(json.decode(str));

String otpResponseToJson(OtpResponse data) => json.encode(data.toJson());

class OtpResponse {
  bool status;
  String message;

  OtpResponse({
    required this.status,
    required this.message,
  });

  factory OtpResponse.fromJson(Map<String, dynamic> json) => OtpResponse(
    status: json["status"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
  };
}