import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String stringInTextField;
  final bool obscureText;
  final TextInputType textInputType;
  const CustomTextField({
    Key? key,
    required this.stringInTextField,
     this.textInputType=TextInputType.text,
     this.obscureText=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Container(
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
                    fontFamily: "Amiri",
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 12, horizontal: 15), // space of text
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
            ),),
     ),
);
}
}