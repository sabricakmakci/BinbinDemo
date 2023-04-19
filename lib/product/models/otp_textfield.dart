import 'package:flutter/material.dart';

class OTPTextField extends StatefulWidget {
  const OTPTextField({super.key});

  @override
  State<OTPTextField> createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
  bool? first;
  bool? last;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 70,
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        cursorColor: Colors.black,
        showCursor: true,
        readOnly: false,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.cyan), borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
