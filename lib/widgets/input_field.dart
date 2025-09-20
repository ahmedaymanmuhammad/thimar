import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, required this.hintText, required this.iconPath});

  final String hintText, iconPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 60,
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xFFF3F3F3), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 1, color: Color(0xFF828282)),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          hintText: '$hintText',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/icons/$iconPath.png',
              width: 24,
              height: 24,
            ),
          ),
          prefixIconConstraints: BoxConstraints(minHeight: 24, minWidth: 24),
        ),
      ),
    );
  }
}
