import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String stringInTextField;
  final bool obscureText;
  final TextInputType textInputType;
  final double? height;
  const CustomTextField({
    Key? key,
    required this.stringInTextField,
    required this.textInputType,
    required this.obscureText,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Container(
        height: height ?? 55,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff707070)),
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(6),
        child: TextFormField(
            textAlign: TextAlign.right,
            validator: (value) {
              if (value!.isEmpty) {
                return "please enter your $stringInTextField";
              }
              return null;
            },
            obscureText: obscureText,
            keyboardType: textInputType,
            maxLines: 1,
            decoration: InputDecoration(
              label: Text(
                stringInTextField,
                style: const TextStyle(
                    color: Color(0xff9d9d9e),
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                  vertical: 6, horizontal: 10), // space of text
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 0.5),
                borderRadius: BorderRadius.circular(16),
              ),
            )),
      ),
    );
  }
}
