import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/locale/app_localizations.dart';

// ignore: must_be_immutable
class StackTimeText extends StatelessWidget {
  StackTimeText({super.key});
  late AppLocalizations locale;

  @override
  Widget build(BuildContext context) {
    locale = AppLocalizations.of(context)!;

    return FittedBox(
      fit: BoxFit.fill,
      child: Text(
        
        "02:36 ${locale.translate("pm")!}"
        ,
          style: TextStyle(
            fontFamily: 'HacenTunisia',
            color: const Color(0xffffffff),
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          )),
    );
  }
}
