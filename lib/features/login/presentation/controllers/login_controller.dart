import 'package:doc_center/features/login/data/models/login_request_body.dart';
import 'package:doc_center/features/login/domain/repos/login_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginRepo _loginRepo;

  LoginController(this._loginRepo);

  final isLoading = RxBool(false);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    isLoading(true);
    final loginRequestBody = LoginRequestBody(
        email: emailController.text, password: passwordController.text);
    final loginOrFail = await _loginRepo.login(loginRequestBody);
    isLoading(false);

    loginOrFail.fold((l) {
      Get.snackbar("Error", l.message ?? "Something went wrong");
    }, (r) {
      Get.snackbar("Success", "Login Successful");
    });
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

}