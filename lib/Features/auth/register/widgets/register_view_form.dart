import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_login_text_field.dart';
import 'gender_selection.dart';

class RegisterViewForm extends StatefulWidget {
  const RegisterViewForm({super.key});

  @override
  State<RegisterViewForm> createState() => _RegisterViewFormState();
}

class _RegisterViewFormState extends State<RegisterViewForm> {
  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    SizeConfig().init(context);
    return Column(
      children: [
        Text(
          'إنشاء حساب',
          style: TextStyle(
              color: kPrimaryColor,
              fontSize: 17.sp,
              fontWeight: FontWeight.w700),
        ),
        Gaps.vGap20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomLoginTextField(
                textInputType: TextInputType.text,
                obscureText: false,
                stringInTextField: 'الاسم'),
            const CustomLoginTextField(
                textInputType: TextInputType.number,
                obscureText: false,
                stringInTextField: 'رقم الجوال'),
            const CustomLoginTextField(
                textInputType: TextInputType.number,
                obscureText: false,
                stringInTextField: 'رقم الهوية'),
            const CustomLoginTextField(
                textInputType: TextInputType.emailAddress,
                obscureText: false,
                stringInTextField: 'البريد الالكتروني'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'النوع',
                style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: kTextColor),
              ),
            ),
            const GenderSelection(),
          ],
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        CustomButton(
          buttonText: 'إنشاء حساب',
          buttonTapHandler: () {
            Navigator.pushNamed(context, kVerificationScreen);
          },
          screenWidth: 190.0,
        ),
        Gaps.vGap20,
        Padding(
          padding: EdgeInsets.only(bottom: 20.h, right: 20.w, left: 20.w),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, kBottomNav);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  locale.translate('skip')!,
                  style: const TextStyle(
                    fontSize: 15,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
