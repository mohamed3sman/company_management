import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/styles.dart';
import '../../../core/widgets/custom_button.dart';
import '../../register/widgets/custom_text_field.dart';

class LoginViewForm extends StatefulWidget {
  const LoginViewForm({super.key});

  @override
  State<LoginViewForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<LoginViewForm> {
  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            locale.translate("login")!,
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 25.sp,
                fontWeight: FontWeight.w900),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: CustomTextField(hintTextField: locale.translate('phone')!),
        ),
        const SizedBox(
          height: 50,
        ),
        CustomButton(
          buttonText: locale.translate('login')!,
          buttonTapHandler: () {
            Navigator.pushNamed(context, kVerificationScreen);
          },
          screenWidth: MediaQuery.of(context).size.width * .55,
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 20,
            bottom: 20,
            right: 20,
          ),
          child: Align(
            alignment: locale.isEnLocale
                ? Alignment.bottomRight
                : Alignment.bottomLeft,
            child: TextButton(
              child: Text(
                locale.translate('skip')!,
                style:const TextStyle(
                  color: Color(0xff7350cb),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, kBottomNav);
              },
            ),
          ),
        ),
      ],
    );
  }
}
