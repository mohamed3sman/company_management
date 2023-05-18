import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/styles.dart';
import '../../../core/widgets/custom_login_text_field.dart';
import 'gender_selection.dart';

class RegisterViewForm extends StatefulWidget {
  const RegisterViewForm({super.key});

  @override
  State<RegisterViewForm> createState() => _RegisterViewFormState();
}

class _RegisterViewFormState extends State<RegisterViewForm> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Text(
          'إنشاء حساب',
          style: TextStyle(
              color: const Color(0xff8f7abd),
              fontSize: 25.sp,
              fontWeight: FontWeight.w900),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomLoginTextField(
                textInputType: TextInputType.text,
                obscureText: false,
                stringInTextField: 'الاسم'),
            CustomLoginTextField(
                textInputType: TextInputType.number,
                obscureText: false,
                stringInTextField: 'رقم الجوال'),
            CustomLoginTextField(
                textInputType: TextInputType.number,
                obscureText: false,
                stringInTextField: 'رقم الهوية'),
            CustomLoginTextField(
                textInputType: TextInputType.emailAddress,
                obscureText: false,
                stringInTextField: 'البريد الالكتروني'),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth! * 0.040),
              child: Text(
                'النوع',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700),
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
          screenWidth: 120.0,
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 20.h, right: 20.w, left: 20.w),
          child: Row(
            children: [
              Spacer(),
              Text(
                'تخطي',
                style: Styles.textStyle20
                    .copyWith(color: const Color(0xff8f7abd), fontSize: 17.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
