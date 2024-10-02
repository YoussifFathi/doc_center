import 'package:doc_center/core/constants/app_colors.dart';
import 'package:doc_center/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldOne extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintTxt;
  final Color? bkColor;
  final String? Function(String?)? validator;

  const CustomTextFieldOne({
    super.key,
    required this.textEditingController,
    required this.hintTxt,
    this.bkColor,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      validator: validator,
      decoration: InputDecoration(
        isDense: true,
        hintStyle:
            AppTextStyles.style13Weight400.copyWith(color: AppColors.gray),
        hintText: hintTxt,
        fillColor: AppColors.moreLighterGray,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: const BorderSide(
            color: AppColors.lightGray,
            width: 1.2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.r),
          borderSide: const BorderSide(
            color: AppColors.mainBlue,
            width: 1.4,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.2,
          ),
        ),
      ),
    );
  }
}
