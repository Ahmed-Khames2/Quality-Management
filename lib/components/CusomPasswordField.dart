// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPasswordField extends StatefulWidget {
  final String label;

  const CustomPasswordField({super.key, this.label = 'كلمة المرور'});

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(fontSize: 16.sp, color: Colors.black54),
          prefixIcon: Icon(Icons.lock, color: Color(0xFF002147), size: 22.sp),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
            icon: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              color: Color(0xFF002147),
              size: 22.sp,
            ),
          ),
          filled: true,
          fillColor: Color(0xFFE0E0E0), // رمادي فاتح للخلفية
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Color(0xFFB0BEC5), width: 1.w), // رمادي هادئ
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Color(0xFF002147), width: 2.w), // أزرق غامق
          ),
        ),
        obscureText: !_isPasswordVisible,
        validator: (value) => value == null || value.isEmpty
            ? 'يرجى إدخال ${widget.label}'
            : null,
      ),
    );
  }
}
