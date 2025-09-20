import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneInputField extends StatelessWidget {
  const PhoneInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xFFF3F3F3)),
          ),
          child: Column(
            children: [
              Spacer(),
              Image.asset('assets/icons/ksa_icon.png', width: 32),
              Spacer(),
              Text(
                '+966',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF4C8613),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: SizedBox(
            width: 265,
            height: 60,
            child: TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 1, color: Color(0xFF828282)),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                hintText: 'رقم الهاتف',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/icons/phone.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                prefixIconConstraints: BoxConstraints(
                  minHeight: 24,
                  minWidth: 24,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
