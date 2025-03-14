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
      style: TextStyle(fontSize: 16.sp, color: Colors.black87), // لون نص واضح
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black54),
        prefixIcon: Icon(icon, color: Color(0xFF002147), size: 24.sp),
        filled: true,
        fillColor: Color(0xFFE0E0E0), // رمادي فاتح للخلفية
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Color(0xFFB0BEC5), width: 1.w), // رمادي غامق
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Color(0xFF002147), width: 2.w), // أزرق غامق
        ),
      ),
      validator: (value) =>
          value == null || value.isEmpty ? 'يرجى إدخال $label' : null,
    );
  }
}
