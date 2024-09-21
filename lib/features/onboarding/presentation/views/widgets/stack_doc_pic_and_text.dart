import 'package:doc_center/core/constants/app_colors.dart';
import 'package:doc_center/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StackDocPicAndText extends StatelessWidget {
  const StackDocPicAndText({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Positioned(
          top: 30.h,
          child: SvgPicture.asset("assets/svgs/docdoc_logo_low_opacity.svg"),
        ),
        SizedBox(
          height: size.height * 0.67,
          child: Image.asset(
            "assets/images/onboarding_doctor.png",
          ),
        ),
        Positioned(
          bottom: 0, // Pin to the bottom
          left: 0,
          right: 0,
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,

                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0),
                ],
                stops: const [
                  0.16,
                  0.7
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.dstIn, // Mask the content with the shader
            child: Container(
              height: 200, // Set the height of the gradient overlay
              color: Colors
                  .white, // Color doesn't matter, the shader will override it
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor\nAppointment App",
            textAlign: TextAlign.center,
            style: AppTextStyles.style32Weight700.copyWith(
              height: 1.4,
              color: AppColors.mainBlue
            ),
          ),
        ),
      ],
    );
  }
}
