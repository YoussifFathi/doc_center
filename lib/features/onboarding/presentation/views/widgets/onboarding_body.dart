import 'package:doc_center/core/constants/app_colors.dart';
import 'package:doc_center/core/constants/app_text_styles.dart';
import 'package:doc_center/core/widgets/primary_button.dart';
import 'package:doc_center/features/onboarding/presentation/views/widgets/logo_and_doc_center.dart';
import 'package:doc_center/features/onboarding/presentation/views/widgets/stack_doc_pic_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25.h,
        ),
        const LogoAndDocCenter(),
        const StackDocPicAndText(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 24.h),
              Text(
                'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                style: AppTextStyles.style13Weight400
                    .copyWith(color: AppColors.lightGray),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.h),
              PrimaryButton(
                title: "Get Started",
                onTap: () {
                  print("go to next screen");
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}

