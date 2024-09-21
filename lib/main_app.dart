import 'package:doc_center/core/constants/app_colors.dart';
import 'package:doc_center/core/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/navigation/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Doc Center",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onboardingScreen,
        onGenerateRoute: AppRouter().getRoute,
      ),
    );
  }
}
