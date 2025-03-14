// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownField extends StatelessWidget {
  final String label;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String? value;
  final IconData? icon;

  const CustomDropdownField({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    this.value,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        prefixIcon: icon != null
            ? Icon(icon, color: Color(0xFF002147), size: 24.sp)
            : null,
        labelText: label,
        labelStyle: TextStyle(fontSize: 16.sp, color: Colors.black54),
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
      items: items.map((job) {
        return DropdownMenuItem(
          value: job,
          child: Text(
            job,
            style: TextStyle(fontSize: 16.sp, color: Colors.black87),
          ),
        );
      }).toList(),
      onChanged: onChanged,
      validator: (value) => value == null ? 'يرجى اختيار $label' : null,
    );
  }
}
