import 'package:fingerPrint/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/custom_button.dart';

class LoginViewForm extends StatefulWidget {
  const LoginViewForm({super.key});

  @override
  State<LoginViewForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<LoginViewForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              'تسجيل الدخول',
              style: TextStyle(
                  color: Color(0xff8f7abd),
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: CustomTextField(
                  stringInTextField: "stringInTextField", obscureText: false)
              // CustomTextField(hintTextField: 'رقم الجوال'),
              ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            buttonTapHandler: () {},
            buttonText: "تسجيل الدخول",
            screenWidth: 20,
            // text: 'تسجيل الدخول',
            // function: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     return const PersonalAccountView();
            //   }));
            // },
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'تخطي',
                // style:
                // Styles.textStyle20.copyWith(color: const Color(0xff8f7abd)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
