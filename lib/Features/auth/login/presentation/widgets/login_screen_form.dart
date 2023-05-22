import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_login_text_field.dart';

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
                fontSize: 17.sp,
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 0.0, left: 0),
          child: CustomLoginTextField(
            stringInTextField: locale.translate('phone')!,
            obscureText: true,
            textInputType: TextInputType.text,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        CustomButton(
          buttonText: locale.translate('login')!,
          buttonTapHandler: () {
            Navigator.pushNamed(context, kVerificationScreen);
          },
          screenWidth: MediaQuery.of(context).size.width * .45,
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
                style: const TextStyle(
                  fontSize: 15,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, kBottomNav);
              },
            ),
          ),
        ),
      ],
    );
  }
}
