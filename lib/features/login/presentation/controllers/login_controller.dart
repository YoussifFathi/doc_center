import 'package:doc_center/core/navigation/routes.dart';
import 'package:doc_center/core/utils/app_regx.dart';
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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final passwordHasLowerCase = RxBool(false);
  final passwordHasUpperCase = RxBool(false);
  final passwordHasDigit = RxBool(false);
  final passwordHasSpecialChar = RxBool(false);
  final passwordLengthMoreThan8 = RxBool(false);


  void login() async {
    isLoading(true);
    final loginRequestBody = LoginRequestBody(
        email: emailController.text, password: passwordController.text);
    final loginOrFail = await _loginRepo.login(loginRequestBody);
    isLoading(false);

    loginOrFail.fold((l) {
      Get.snackbar("Error", l.message ?? "Something went wrong");
    }, (r) {
      Get.offAllNamed(Routes.homeScreen);
    });
  }

  void _initPasswordControllerListener() {
    passwordController.addListener(() {
      passwordHasLowerCase(AppRegx.hasLowerCase(passwordController.text));
      passwordHasUpperCase(AppRegx.hasUpperCase(passwordController.text));
      passwordHasDigit(AppRegx.hasDigit(passwordController.text));
      passwordHasSpecialChar(AppRegx.hasSpecialChar(passwordController.text));
      passwordLengthMoreThan8(AppRegx.hasMinLength(passwordController.text));
    },);
  }


  @override
  void onInit() {
    super.onInit();
    _initPasswordControllerListener();
  }


  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

}