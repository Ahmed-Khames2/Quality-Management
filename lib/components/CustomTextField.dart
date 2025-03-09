// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final FocusNode? focusNode;

  const CustomTextField({
    super.key,
    required this.label,
    required this.icon,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      keyboardType: keyboardType,
      style: TextStyle(fontSize: 16.sp), // ضبط حجم النص ليكون متجاوبًا
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(fontSize: 14.sp),
        prefixIcon: Icon(icon, color: Colors.grey.shade700, size: 24.sp),
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
      validator: (value) =>
          value == null || value.isEmpty ? 'يرجى إدخال $label' : null,
    );
  }
}
