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
          labelStyle: TextStyle(fontSize: 16.sp),
          prefixIcon: Icon(Icons.lock, color: Colors.grey, size: 22.sp),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
            icon: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.blue.shade700,
              size: 22.sp,
            ),
          ),
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Colors.grey, width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Colors.blue.shade700, width: 2.w),
          ),
        ),
        obscureText: !_isPasswordVisible,
        validator: (value) =>
            value == null || value.isEmpty ? 'يرجى إدخال ${widget.label}' : null,
      ),
    );
  }
}
