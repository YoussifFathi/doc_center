import 'package:doc_center/core/navigation/routes.dart';
import 'package:doc_center/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return _buildRoute(settings, const SplashScreen());
      // case Routes.onboardingScreen:
      //   return _buildRoute(settings, const OnBoardingScreen());
      // case Routes.homeScreen:
      //   return _buildRoute(settings, const HomeScreen());
      default:
        return _buildRoute(settings, const NoRouteScreen());
    }
  }

  Route _buildRoute(RouteSettings settings, Widget widget) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => widget,
    );
  }
}

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("No Route Screen"),
    );
  }
}
