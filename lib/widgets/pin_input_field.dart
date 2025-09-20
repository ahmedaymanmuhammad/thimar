import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinInputField extends StatelessWidget {
  const PinInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      defaultPinTheme: PinTheme(
        width: 70,
        height: 60,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Color(0xFFF3F3F3), width: 1),
        ),
      ),
      separatorBuilder: (index) => SizedBox(width: 20),
    );
  }
}
