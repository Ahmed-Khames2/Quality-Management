import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // اللوجو في المنتصف
            const Spacer(flex: 2),
            Image.asset(
              'assets/images/Logo.png',
              width: 150.w, // استخدام ScreenUtil لضبط العرض
              height: 150.h, // ضبط الارتفاع باستخدام ScreenUtil
            ),
            SizedBox(height: 50.h), // المسافة بين اللوجو والكلام
            const Spacer(),
            // النص في الأسفل
             Text(
              'Welcome to our app',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 20.h), // إضافة مسافة بعد النص
          ],
        ),
      ),
    );
  }
}
