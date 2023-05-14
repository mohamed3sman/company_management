import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:dotted_line/dotted_line.dart';
import '../../../core/locale/app_localizations.dart';
import '../../../core/utils/styles.dart';

class VerificationViewForm extends StatefulWidget {
  const VerificationViewForm({super.key});

  @override
  State<VerificationViewForm> createState() => _VerificationViewFormState();
}

class _VerificationViewFormState extends State<VerificationViewForm> {
  @override
  Widget build(BuildContext context) {
        late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    SizeConfig().init(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
             locale.translate('activation_code')! ,
            style: TextStyle(
                color: const Color(0xff8f7abd),
                fontSize: 22.sp,
                fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.3,
          child: const Divider(
            color: Color(0xff8f7abd),
            thickness: 3,
          ),
        ),
        const SizedBox(height: 20),
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
              fontWeight: FontWeight.w800),
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
        const Padding(
          padding: EdgeInsets.all(35),
          child: DottedLine(
            dashColor: Color(0xff8f7abd),
            dashGapLength: 6,
            dashLength: 10,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '00:59',
                style: Styles.textStyle20
                    .copyWith(color: const Color(0xff8f7abd), fontSize: 18.sp),
              ),
              Text(
                 locale.translate('resend_the_code')!,
                style: Styles.textStyle20.copyWith(
                  fontSize: 15.sp,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
