import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  bool status;
  int type;
  String action;
  String message;

  LoginResponse({
    required this.status,
    required this.type,
    required this.action,
    required this.message,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    status: json["status"],
    type: json["type"],
    action: json["action"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "type": type,
    "action": action,
    "message": message,
  };
}