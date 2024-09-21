import 'package:doc_center/features/onboarding/presentation/views/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnboardingBody(),
      ),
    );
  }
}
