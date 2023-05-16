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
    return Center(
      child: Container(
        width: 260.w,
        height: 65.h,
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
                icon: Icons.access_time_outlined,
                timeText: '8 ${locale.translate("hours")!}',
                actionText: locale.translate("work_hours")!,
              ),
              DetailsSnackBarItem(
                icon: Icons.keyboard_double_arrow_left_rounded,
                timeText: '05:00 ${locale.translate("pm")!}',
                actionText: locale.translate("leaving_register")!,
              ),
              DetailsSnackBarItem(
                icon: Icons.exit_to_app_rounded,
                timeText: '09:00 ${locale.translate("am")!}',
                actionText: locale.translate("attendance_register")!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
