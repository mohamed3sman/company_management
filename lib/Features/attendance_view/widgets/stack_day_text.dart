import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/locale/app_localizations.dart';

// ignore: must_be_immutable
class StackDayText extends StatelessWidget {
  StackDayText({super.key});
  late AppLocalizations locale;

  @override
  Widget build(BuildContext context) {
    locale = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text("${locale.translate("sunday")!} :2023/5/7",
            style: TextStyle(
              color: const Color(0xffffffff),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            )),
      ),
    );
  }
}
