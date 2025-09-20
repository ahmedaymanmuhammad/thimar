import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/views/active_account/active_account_view.dart';
import 'package:thimar/views/login/login_view.dart';
import 'package:thimar/views/splash/splash_view.dart';

import 'views/create_new_password/create_new_password_view.dart';
import 'views/forget_password/forget_password_view.dart';
import 'views/register/register_view.dart';
import 'views/verify_otp/verify_otp_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          theme: ThemeData(
            fontFamily: 'Tajawal',
            scaffoldBackgroundColor: Color(0xFFFFFFFF),
          ),
          home: PageView(
            scrollDirection: Axis.vertical,
            children: const [
              SplashView(),
              LoginView(),
              RegisterView(),
              ForgetPasswordView(),
              VerifyOtpView(),
              CreateNewPasswordView(),
              ActiveAccountView(),
            ],
          ),
          builder: (context, child) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: child!,
            );
          },
        );
      },
    );
  }
}
