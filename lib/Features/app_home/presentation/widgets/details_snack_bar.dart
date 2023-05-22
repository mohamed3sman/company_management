import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/locale/app_localizations.dart';
import 'details_snack_bar_item.dart';

// ignore: must_be_immutable
class DetailsSnackBar extends StatelessWidget {
  DetailsSnackBar({
    super.key,
  });
  late AppLocalizations locale;

  @override
  Widget build(BuildContext context) {
    locale = AppLocalizations.of(context)!;

    SizeConfig().init(context);
    return Container(
      width: 260.w,
      height: SizeConfig.screenHeight! * 0.1,
      margin: EdgeInsets.only(
        top: SizeConfig.screenHeight! * 0.47,
        right: SizeConfig.screenWidth! * 0.14,
        left: SizeConfig.screenWidth! * 0.14,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
              color: Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
              spreadRadius: 0)
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize! * 4,
            vertical: SizeConfig.defaultSize! * 0.5),
        child: Row(
          children: [
            DetailsSnackBarItem(
              icon: Icons.login_rounded,
              timeText: '09:00 ${locale.translate("am")!}',
              actionText: locale.translate("attendance_register")!,
            ),
            DetailsSnackBarItem(
              icon: Icons.logout_outlined,
              timeText: '05:00 ${locale.translate("pm")!}',
              actionText: locale.translate("leaving_register")!,
              rotate: true,
            ),
            DetailsSnackBarItem(
              icon: Icons.access_time,
              timeText: '8 ${locale.translate("hours")!}',
              actionText: locale.translate("work_hours")!,
            ),
          ],
        ),
      ),
    );
  }
}
