import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable(createToJson: false)
class LoginResponse {
  final String message;
  final bool status;
  @JsonKey(name: 'code')
  final int statusCode;
  @JsonKey(name: 'data')
  final LoginSession? loginSession;


  LoginResponse({
    required this.message,
    required this.status,
    required this.statusCode,
    required this.loginSession,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}


@JsonSerializable(createToJson: false)
class LoginSession {
  final String token;
  final String username;

  LoginSession({required this.token, required this.username});

  factory LoginSession.fromJson(Map<String, dynamic> json) => _$LoginSessionFromJson(json);

}

