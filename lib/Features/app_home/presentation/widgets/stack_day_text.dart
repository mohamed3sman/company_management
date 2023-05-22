import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/locale/app_localizations.dart';
import '../../../../core/utils/mediaquery_sizes.dart';

// ignore: must_be_immutable
class StackDayText extends StatelessWidget {
  StackDayText({super.key});
  late AppLocalizations locale;

  @override
  Widget build(BuildContext context) {
    locale = AppLocalizations.of(context)!;
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.screenHeight! * 0.010),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text("${locale.translate("sunday")!} :2023/5/7",
            style: TextStyle(
              color: const Color(0xffffffff),
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            )),
      ),
    );
  }
}
