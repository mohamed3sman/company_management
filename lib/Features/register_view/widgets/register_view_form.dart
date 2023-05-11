import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';
import 'custom_text_field.dart';
import 'gender_selection.dart';

class RegisterViewForm extends StatefulWidget {
  const RegisterViewForm({super.key});

  @override
  State<RegisterViewForm> createState() => _RegisterViewFormState();
}

class _RegisterViewFormState extends State<RegisterViewForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'إنشاء حساب',
          style: TextStyle(
              color: Color(0xff8f7abd),
              fontSize: 25,
              fontWeight: FontWeight.w900),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CustomTextField(hintTextField: 'الاسم'),
              const CustomTextField(hintTextField: 'رقم الجوال'),
              const CustomTextField(hintTextField: 'رقم الهوية'),
              const CustomTextField(hintTextField: 'البريد الالكتروني'),
              Text(
                'النوع',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700),
              ),
              const GenderSelection(),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        CustomButton(
          buttonText: 'إنشاء حساب',
          buttonTapHandler: () {
            Navigator.pushNamed(context, kVerificationScreen);
          },
          screenWidth: 120.0,
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 20),
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
