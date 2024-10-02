// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['message'] as String,
      status: json['status'] as bool,
      statusCode: (json['code'] as num).toInt(),
      loginSession: json['data'] == null
          ? null
          : LoginSession.fromJson(json['data'] as Map<String, dynamic>),
    );

LoginSession _$LoginSessionFromJson(Map<String, dynamic> json) => LoginSession(
      token: json['token'] as String,
      username: json['username'] as String,
    );
