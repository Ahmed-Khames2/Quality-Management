import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cusomgeserdetector extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const Cusomgeserdetector({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.purple, // لون الخلفية موف
      borderRadius: BorderRadius.circular(12.r), // زوايا دائرية
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        splashColor: Colors.white.withOpacity(0.2), // تأثير الفقاعة
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
