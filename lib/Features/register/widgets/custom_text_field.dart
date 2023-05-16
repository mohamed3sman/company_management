import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintTextField;
  final bool obscureText;
  final TextInputType textInputType;
  int? fieldLines;
  CustomTextField({
    this.fieldLines,
    Key? key,
    required this.hintTextField,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Material(
          // shadowColor: Colors.red.withOpacity(0.5),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffd8d5d5)),
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(6),
            child: TextFormField(
                textAlign: TextAlign.right,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter your $hintTextField";
                  }
                  return null;
                },
                obscureText: obscureText,
                keyboardType: textInputType,
                maxLines: fieldLines ?? 1,
                decoration: InputDecoration(
                  label: Text(
                    hintTextField,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color(0xff9d9d9e),
                        // fontFamily: "Amiri",
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp),
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15), // space of text
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
          ),
        ));
  }
}
