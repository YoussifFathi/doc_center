import 'package:dartz/dartz.dart';
import 'package:doc_center/core/networking/api_error_handler.dart';
import 'package:doc_center/core/networking/api_error_model.dart';
import 'package:doc_center/core/networking/api_service/api_service_auth.dart';
import 'package:doc_center/features/login/data/models/login_request_body.dart';
import 'package:doc_center/features/login/data/models/login_response.dart';
import 'package:doc_center/features/login/domain/repos/login_repo.dart';

class LoginRepoImp implements LoginRepo {
  final ApiServiceAuth apiServiceAuth;
  LoginRepoImp({required this.apiServiceAuth});
  @override
  Future<Either<ApiErrorModel, LoginResponse>> login(LoginRequestBody body) async {
    try{
      final response = await apiServiceAuth.login(body);
      return right(response);
    }catch(e){
      return left(ErrorHandler.handle(e).apiErrorModel);
    }
  }

}