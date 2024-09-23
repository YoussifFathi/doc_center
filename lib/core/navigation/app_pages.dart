import 'package:doc_center/core/navigation/routes.dart';
import 'package:doc_center/features/login/presentation/views/login_screen.dart';
import 'package:doc_center/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:doc_center/features/splash/presentation/views/splash_screen.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.onboardingScreen,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => const LoginScreen(),
    ),
  ];
}
