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
        prefixIcon: icon != null ? Icon(icon, color: Colors.grey, size: 24.sp) : null,
        labelText: label,
        labelStyle: TextStyle(fontSize: 16.sp),
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
      items: items.map((job) {
        return DropdownMenuItem(
          value: job,
          child: Text(
            job,
            style: TextStyle(fontSize: 16.sp),
          ),
        );
      }).toList(),
      onChanged: onChanged,
      validator: (value) => value == null ? 'يرجى اختيار $label' : null,
    );
  }
}
