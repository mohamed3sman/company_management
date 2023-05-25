import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTableAttendanceColumn extends StatelessWidget {
  const CustomTableAttendanceColumn({super.key, required this.timeText});
  final String timeText;
  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        "$timeText ${locale.translate('am')!}",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
