import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page/featcher/onbording/pages/onbordpage.dart';
import 'package:sign_up_page/featcher/splash/pages/splashpage.dart';
import 'package:sign_up_page/testpage.dart';
import 'featcher/Auth/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          // home: const SignUpPage(),
          home:  OnboardingScreen(),
        );
      },
    );
  }
}
