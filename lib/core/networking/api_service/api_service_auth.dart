import 'package:dio/dio.dart';
import 'package:doc_center/core/networking/api_constants.dart';
import 'package:doc_center/features/login/data/models/login_request_body.dart';
import 'package:doc_center/features/login/data/models/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service_auth.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServiceAuth {
  factory ApiServiceAuth(Dio dio, {String? baseUrl}) = _ApiServiceAuth;


  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody body,
  );

}