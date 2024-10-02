import 'package:doc_center/core/constants/app_colors.dart';
import 'package:doc_center/core/constants/app_text_styles.dart';
import 'package:doc_center/core/widgets/custom_password_text_field.dart';
import 'package:doc_center/core/widgets/custom_text_field_one.dart';
import 'package:doc_center/core/widgets/primary_button.dart';
import 'package:doc_center/features/login/presentation/controllers/login_controller.dart';
import 'package:doc_center/features/login/presentation/views/widgets/dont_have_account_txt.dart';
import 'package:doc_center/features/login/presentation/views/widgets/login_header_text.dart';
import 'package:doc_center/features/login/presentation/views/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/widgets/custom_center_loading.dart';

class LoginBody extends GetView<LoginController> {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
        vertical: 25.h,
      ),
      child: Obx(
        () => controller.isLoading.value
            ? const CustomCenterLoading()
            : SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    const LoginHeaderText(),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomTextFieldOne(
                      textEditingController: controller.emailController,
                      hintTxt: "Email",
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomPasswordTextField(
                      textEditingController: controller.passwordController,
                      hintTxt: "********",
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 8.w),
                      child: Text(
                        "Forget Password?",
                        style: AppTextStyles.style15Weight400
                            .copyWith(color: AppColors.mainBlue),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    PrimaryButton(
                      title: "Login",
                      onTap: () {
                        controller.login();
                      },
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const TermsAndConditionsText(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const DontHaveAccountText(),
                  ],
                ),
              ),
      ),
    );
  }
}

