import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/mediaquery_sizes.dart';

class TermsAndConditionsViewBody extends StatelessWidget {
  const TermsAndConditionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(
          icon: const Icon(Icons.arrow_forward),
          function: () {
            Navigator.pop(context);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 13.h, bottom: SizeConfig.screenHeight! * 0.05),
              child: Text(locale.translate('Terms_Conditions')!,
                  style: TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w900,
                      fontFamily: "HacenTunisia",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.sp),
                  textAlign: TextAlign.right),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locale.translate('read_terms_conditions')!,
                style: TextStyle(
                    color: const Color(0xff282828),
                    fontWeight: FontWeight.w800,
                    fontFamily: "HacenTunisia",
                    fontStyle: FontStyle.normal,
                    fontSize: 13.sp),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع \n"
                "يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع \n"
                "يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع \n"
                "يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع \n"
                "يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع \n"
                "يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع \n"
                "يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع \n"
                "يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع الإشعار يتم هنا كتابة موضوع \n"
                "يتم هنا كتابة موضوع الإشعار يتم هنا كتابة \n",
                style: TextStyle(
                    color: const Color(0xffa4a4a4),
                    fontWeight: FontWeight.w400,
                    fontFamily: "HacenTunisia",
                    fontStyle: FontStyle.normal,
                    fontSize: 11.sp),
                textAlign: TextAlign.right,
              )
            ],
          ),
        )
      ],
    );
  }
}
