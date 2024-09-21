import 'package:doc_center/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoAndDocCenter extends StatelessWidget {
  const LogoAndDocCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/docdoc_logo.svg"),
        SizedBox(
          width: 8.w,
        ),
        const Text(
          "Doc Center",
          style: AppTextStyles.style24Weight500,
        ),
      ],
    );
  }
}
