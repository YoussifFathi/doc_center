import 'package:doc_center/core/constants/app_colors.dart';
import 'package:doc_center/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginHeaderText extends StatelessWidget {
  const LoginHeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back',
          style: AppTextStyles.style24Weight500.copyWith(
            color: AppColors.mainBlue,
          ),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 6.h,
        ),
        Text(
          'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
          style: AppTextStyles.style15Weight400.copyWith(
            color: AppColors.gray,
          ),
        ),
      ],
    );
  }
}
