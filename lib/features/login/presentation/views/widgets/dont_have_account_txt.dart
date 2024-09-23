import 'package:doc_center/core/constants/app_colors.dart';
import 'package:doc_center/core/constants/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: AppTextStyles.style13Weight400.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
          TextSpan(
            text: ' Sign Up',
            style: AppTextStyles.style15Weight700.copyWith(
              color: AppColors.mainBlue,
            ),
            recognizer: TapGestureRecognizer()..onTap = (){
              print("Sign Up");
            }
          ),
        ],
      ),
    );
  }
}
