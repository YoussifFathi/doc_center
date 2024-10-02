import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomCenterLoading extends StatelessWidget {
  const CustomCenterLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.mainBlue,
      ),
    );
  }
}
