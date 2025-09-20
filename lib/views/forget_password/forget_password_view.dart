import 'package:flutter/material.dart';
import 'package:thimar/widgets/app_logo.dart';
import 'package:thimar/widgets/phone_input_field.dart';

import '../../widgets/app_button.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: AppLogo()),
              SizedBox(height: 16),
              Text(
                'نسيت كلمة المرور؟',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF4C8613),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'أدخل رقم الجوال المرتبط بحسابك',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF707070),
                ),
              ),
              SizedBox(height: 30),
              PhoneInputField(),
              SizedBox(height: 24),
              AppButton(text: 'تأكيد رقم الجوال'),
              Spacer(),
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
    ;
  }
}
