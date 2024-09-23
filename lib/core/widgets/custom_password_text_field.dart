import 'package:doc_center/core/constants/app_colors.dart';
import 'package:doc_center/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPasswordTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintTxt;
  final Color? bkColor;

  const CustomPasswordTextField({
    super.key,
    required this.textEditingController,
    required this.hintTxt,
    this.bkColor,
  });

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isObscure = true;

  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {}); // Rebuild widget when focus state changes
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: widget.textEditingController,
      obscureText: isObscure,
      decoration: InputDecoration(
        isDense: true,
        hintStyle:
            AppTextStyles.style13Weight400.copyWith(color: AppColors.gray),
        hintText: widget.hintTxt,
        fillColor: AppColors.moreLighterGray,
        filled: true,
        suffixIcon: isObscure
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isObscure = false;
                  });
                },
                child: Icon(
                  Icons.visibility_off,
                  color: focusNode.hasFocus
                      ? AppColors.mainBlue
                      : AppColors.lightGray,
                ),
              )
            : GestureDetector(
                onTap: () {
                  setState(() {
                    isObscure = true;
                  });
                },
                child: Icon(
                  Icons.visibility,
                  color: focusNode.hasFocus
                      ? AppColors.mainBlue
                      : AppColors.lightGray,
                ),
              ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(
              color: AppColors.lightGray,
              width: 1.2,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.r),
            borderSide: const BorderSide(
              color: AppColors.mainBlue,
              width: 1.4,
            )),
      ),
    );
  }
}
