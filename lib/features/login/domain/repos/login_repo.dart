import 'package:dartz/dartz.dart';
import 'package:doc_center/core/networking/api_error_model.dart';
import 'package:doc_center/features/login/data/models/login_request_body.dart';
import 'package:doc_center/features/login/data/models/login_response.dart';

abstract class LoginRepo {
  Future<Either<ApiErrorModel, LoginResponse>> login(LoginRequestBody body);
}