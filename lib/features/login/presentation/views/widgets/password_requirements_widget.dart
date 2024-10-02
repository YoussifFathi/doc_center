import 'package:doc_center/core/constants/app_text_styles.dart';
import 'package:doc_center/features/login/presentation/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PasswordRequirementsWidget extends GetView<LoginController> {
  const PasswordRequirementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Column(
          children: [
            PasswordRequirementRow(
              isValid: controller.passwordHasLowerCase.value,
              message: "at least 1 lower case letter",
            ),
            PasswordRequirementRow(
              isValid: controller.passwordHasUpperCase.value,
              message: "at least 1 upper case letter",
            ),
            PasswordRequirementRow(
              isValid: controller.passwordHasDigit.value,
              message: "at least 1 digit",
            ),
            PasswordRequirementRow(
              isValid: controller.passwordHasSpecialChar.value,
              message: "at least 1 special character",
            ),
            PasswordRequirementRow(
              isValid: controller.passwordLengthMoreThan8.value,
              message: "at least 8 characters long",
            ),
          ],
        );
      },
    );
  }
}

class PasswordRequirementRow extends StatelessWidget {
  final bool isValid;
  final String message;

  const PasswordRequirementRow({
    super.key,
    required this.isValid,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: isValid ? Colors.green : Colors.red,
          radius: 3,
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          message,
          style: AppTextStyles.style13Weight400.copyWith(
            color: isValid ? Colors.green : Colors.red,
            decoration: TextDecoration.lineThrough,
            decorationColor: isValid ? Colors.green : Colors.red,
          ),
        )
      ],
    );
  }
}
