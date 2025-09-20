import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/thimar_logo.png',
      height: 140,
      width: 140,
      fit: BoxFit.cover,
    );
  }
}
