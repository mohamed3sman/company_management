import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:dotted_line/dotted_line.dart';

import '../../../../core/locale/app_localizations.dart';
import '../../../../core/utils/styles.dart';

class VerificationScreenForm extends StatefulWidget {
  const VerificationScreenForm({super.key});

  @override
  State<VerificationScreenForm> createState() => _VerificationScreenFormState();
}

class _VerificationScreenFormState extends State<VerificationScreenForm> {
  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    SizeConfig().init(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 40.h, bottom: 5.h),
          child: Text(
            locale.translate('activation_code')!,
            style: TextStyle(
                color: const Color(0xff8f7abd),
                fontSize: 22.sp,
                fontWeight: FontWeight.w900),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 50.w,
                height: 3,
                decoration: new BoxDecoration(color: Color(0xff7350cb))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Icon(
                Icons.circle_outlined,
                size: 12.sp,
                color: Colors.deepPurple,
              ),
            ),
            Container(
                width: 50.w,
                height: 3,
                decoration: new BoxDecoration(color: Color(0xff7350cb)))
          ],
        ),
        SizedBox(height: 30.h),
        Text(
          locale.translate('please_enter_the_verification_code_sent_to_me')!,
          style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontSize: 14.sp,
              fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '01223456789',
          style: TextStyle(
            color: const Color(0xff8f7abd),
            fontSize: 16.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        VerificationCode(
          textStyle: TextStyle(
            fontSize: 16.0.sp,
            color: const Color(0xff8f7abd),
          ),
          fullBorder: true,
          itemSize: 40,
          fillColor: Colors.grey.withOpacity(0.1),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          keyboardType: TextInputType.number,
          underlineColor: const Color(0xff8f7abd),
          length: 5,
          cursorColor: const Color(0xff8f7abd),
          onCompleted: (String value) {
            setState(() {});
          },
          onEditing: (bool value) {
            setState(() {});
          },
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 55, right: 55, bottom: 30),
          child: DottedLine(
            dashColor: const Color(0xff8f7abd).withOpacity(0.5),
            dashGapLength: 4,
            dashLength: 8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                locale.translate('resend_the_code')!,
                style: Styles.textStyle20.copyWith(
                  fontSize: 15.sp,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              Text(
                '00:59',
                style: Styles.textStyle20
                    .copyWith(color: const Color(0xff8f7abd), fontSize: 18.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
