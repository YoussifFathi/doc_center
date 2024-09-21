import 'package:doc_center/core/constants/app_colors.dart';
import 'package:doc_center/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const PrimaryButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mainBlue,
          borderRadius: BorderRadius.circular(16.r),
        ),
        height: 52,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.style20Weight600.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
