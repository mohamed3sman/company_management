import 'package:fingerPrint/core/widgets/custom_elevated_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintTextField;
  final bool obscureText;
  final TextInputType textInputType;
  int? fieldLines;double ? containerHeight;
  CustomTextField({
    this.fieldLines,
    Key? key,
    this.containerHeight,
    required this.hintTextField,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 0),
        child: Material(
          // shadowColor: Colors.red.withOpacity(0.5),
          child: CustomElevatedContainer(
            
            containerHeight: containerHeight??50,
            containerWidth: double.infinity,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: const Color(0xffd8d5d5)),
            //     color: const Color(0xffffffff),
            //     borderRadius: BorderRadius.circular(12),
            //   ),
            //  // padding: const EdgeInsets.all(6),
            containerChild: TextFormField(
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
                    borderRadius: BorderRadius.circular(12),
                  ),
                )),
          ),
        ));
  }
}
