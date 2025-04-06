import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String text;
  final String description;

  const OnboardingPage(
      {required this.imagePath, required this.text, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 6. Image of the current page
        Image.asset(imagePath, width: 200.w, height: 150.h, fit: BoxFit.cover),
        SizedBox(height: 20.h), // Space between image and text
        // 7. Text for the current page
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
        SizedBox(height: 15.h),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.sp,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
