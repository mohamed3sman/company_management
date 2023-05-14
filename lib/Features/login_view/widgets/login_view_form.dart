import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/styles.dart';
import '../../../core/widgets/custom_button.dart';
import '../../register_view/widgets/custom_text_field.dart';

class LoginViewForm extends StatefulWidget {
  const LoginViewForm({super.key});

  @override
  State<LoginViewForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<LoginViewForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            'تسجيل الدخول',
            style: TextStyle(
                color: const Color(0xff8f7abd),
                fontSize: 25.sp,
                fontWeight: FontWeight.w900),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: CustomTextField(hintTextField: 'رقم الجوال'),
        ),
        const SizedBox(
          height: 50,
        ),
        CustomButton(
          buttonText: 'تسجيل الدخول',
          buttonTapHandler: () {
            Navigator.pushNamed(context, kVerificationScreen);
          },
          screenWidth: 120,
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 20),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'تخطي',
              style:
                  Styles.textStyle20.copyWith(color: const Color(0xff8f7abd)),
            ),
          ),
        ),
      ],
    );
  }
}
