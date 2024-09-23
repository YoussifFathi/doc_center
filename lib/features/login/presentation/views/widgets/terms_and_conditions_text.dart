import 'package:doc_center/core/constants/app_colors.dart';
import 'package:doc_center/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: AppTextStyles.style13Weight400.copyWith(
              color: AppColors.gray,
            ),
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: AppTextStyles.style13Weight500.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
          TextSpan(
            text: ' and',
            style: AppTextStyles.style13Weight400.copyWith(
              color: AppColors.gray,
            ),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: AppTextStyles.style13Weight500.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
