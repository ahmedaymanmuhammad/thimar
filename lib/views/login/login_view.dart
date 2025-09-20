import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/views/forget_password/forget_password_view.dart';
import 'package:thimar/views/register/register_view.dart';
import 'package:thimar/widgets/app_button.dart';
import 'package:thimar/widgets/app_logo.dart';
import 'package:thimar/widgets/pass_input_field.dart';
import 'package:thimar/widgets/phone_input_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: AppLogo()),
              SizedBox(height: 16),
              Text(
                'مرحبا بك مرة أخرى!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF4C8613),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'يمكنك تسجيل الدخول الآن',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF707070),
                ),
              ),
              SizedBox(height: 30),
              PhoneInputField(),
              SizedBox(height: 16),
              PassInputField(hintText: 'كلمة المرور', iconPath: 'unlock'),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgetPasswordView(),
                    ),
                  );
                },
                child: Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF707070),
                  ),
                ),
              ),
              SizedBox(height: 34),
              AppButton(text: 'تسجيل الدخول'),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ليس لديك حساب؟',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF4C8613),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterView()),
                      );
                    },
                    child: Text(
                      'سجل الآن',
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
