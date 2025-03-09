// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page/components/CusomPasswordField.dart';
import 'package:sign_up_page/components/CustomDropdownField.dart';
import 'package:sign_up_page/components/CustomTextField.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode _nameFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _nameFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _nameFocusNode.dispose();
    super.dispose();
  }

  // ignore: unused_field
  String? _selectedJob;
  final List<String> _jobs = [
    'طالب بكالوريوس',
    'طالب دراسات عليا',
    'عضو هيئة التدريس',
    'عضو هيئة المعاونه',
    'عضو في شؤون الطلبة',
    'عضو في شؤون الخريجين',
    'عضو في شؤون الدراسات العليا',
    'عضو في الشؤون المالية',
    'مسؤول في وحدة رعاية الشباب',
    'مسؤول في وحدة المكتبة',
    'مسؤول تكنولوجيا المعلومات',
    'عضو في شؤون العاملين'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          "إنشاء حساب",
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(height: 10.h),
              CustomTextField(
                label: 'الاسم',
                icon: Icons.person,
                focusNode: _nameFocusNode,
              ),
              SizedBox(height: 10.h),
              const CustomTextField(
                label: 'البريد الإلكتروني',
                icon: Icons.email,
              ),
              SizedBox(height: 10.h),
              const CustomPasswordField(),
              SizedBox(height: 10.h),
              const CustomPasswordField(label: 'تأكيد كلمة المرور'),
              SizedBox(height: 10.h),
              CustomDropdownField(
                icon: Icons.work,
                label: 'الوظيفة',
                items: _jobs,
                onChanged: (value) {
                  setState(() {
                    _selectedJob = value;
                  });
                },
              ),
              SizedBox(height: 10.h),
              const CustomTextField(label: 'الرقم القومي', icon: Icons.badge),
              SizedBox(height: 10.h),
              const CustomTextField(label: 'رقم الهاتف', icon: Icons.phone),
              SizedBox(height: 20.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // تنفيذ عملية التسجيل
                  }
                },
                child: Text(
                  "تسجيل الحساب",
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
              SizedBox(height: 15.h),
              InkWell(
                onTap: () {
                  // تنفيذ الانتقال إلى صفحة تسجيل الدخول
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "هل لديك حساب؟ ",
                          style: TextStyle(color: Colors.black87, fontSize: 14.sp),
                        ),
                        TextSpan(
                          text: "سجل الدخول الآن",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
