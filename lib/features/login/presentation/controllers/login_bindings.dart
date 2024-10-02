import 'package:dio/dio.dart';
import 'package:doc_center/features/login/domain/repos/login_repo.dart';
import 'package:doc_center/features/login/presentation/controllers/login_controller.dart';
import 'package:get/get.dart';
import 'package:doc_center/features/login/data/repos_imp/login_repo_imp.dart';
import 'package:doc_center/core/networking/api_service/api_service_auth.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<ApiServiceAuth>(
      () => ApiServiceAuth(
        Get.find<Dio>(),
      ),
    );

    Get.lazyPut<LoginRepo>(
      () => LoginRepoImp(
        apiServiceAuth: Get.find<ApiServiceAuth>(),
      ),
    );

    Get.lazyPut(
      () => LoginController(
        Get.find<LoginRepo>(),
      ),
      fenix: true,
    );

  }
}
