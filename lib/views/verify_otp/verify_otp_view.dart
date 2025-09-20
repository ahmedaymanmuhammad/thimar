import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:thimar/widgets/app_button.dart';
import 'package:thimar/widgets/app_logo.dart';
import 'package:thimar/widgets/phone_input_field.dart';
import 'package:thimar/widgets/pin_input_field.dart';

class VerifyOtpView extends StatefulWidget {
  const VerifyOtpView({super.key});

  @override
  State<VerifyOtpView> createState() => _VerifyOtpViewState();
}

class _VerifyOtpViewState extends State<VerifyOtpView> {
  bool isComplete = false;

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
                'نسيت كلمة المرور؟',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF4C8613),
                ),
              ),
              SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF707070),
                  ),
                  children: [
                    TextSpan(
                      text:
                          'أدخل الكود المكون من 4 أرقام المرسل على رقم الجوال 9660548745+',
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {},
                        child: Text(
                          'تغيير رقم الجوال',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF4C8613),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              PinInputField(),
              SizedBox(height: 30),
              AppButton(text: 'تأكيد الكود'),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'لم تستلم الكود ؟\nيمكنك إعادة إرسال الكود بعد',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF707070),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: CircularCountDownTimer(
                  width: 66,
                  height: 66,
                  duration: 5,
                  initialDuration: 0,
                  fillColor: Color(0xFFD8D8D8),
                  ringColor: Color(0xFF4C8613),
                  isReverse: true,
                  textStyle: TextStyle(
                    fontSize: 21,
                    color: Color(0xFF4C8613),
                    fontWeight: FontWeight.w400,
                  ),
                  onComplete: () {
                    setState(() {
                      isComplete = true;
                    });
                  },
                ),
              ),
              SizedBox(height: 28),
              Center(
                child: Visibility(
                  visible: isComplete,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  maintainInteractivity: false,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'إعادة الإرسال',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF4C8613),
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(133, 47),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      side: BorderSide(color: Color(0xFF4C8613), width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
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
