import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/widgets/app_button.dart';
import 'package:thimar/widgets/app_logo.dart';
import 'package:thimar/widgets/input_field.dart';
import 'package:thimar/widgets/pass_input_field.dart';
import 'package:thimar/widgets/phone_input_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: AppLogo()),
              SizedBox(height: 16),
              Text(
                'مرحبا بك مرة أخرى',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF4C8613),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'يمكنك تسجيل حساب جديد الآن',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF707070),
                ),
              ),
              SizedBox(height: 24),
              InputField(hintText: 'اسم المستخدم', iconPath: 'user'),
              SizedBox(height: 16),
              PhoneInputField(),
              SizedBox(height: 16),
              InputField(hintText: 'المدينة', iconPath: 'report'),
              SizedBox(height: 16),
              PassInputField(hintText: 'كلمة المرور', iconPath: 'unlock'),
              SizedBox(height: 16),
              PassInputField(hintText: 'كلمة المرور', iconPath: 'unlock'),
              SizedBox(height: 24),
              AppButton(text: 'تسجيل'),
              SizedBox(height: 78),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'لديك حساب بالفعل؟',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF4C8613),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF4C8613),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
