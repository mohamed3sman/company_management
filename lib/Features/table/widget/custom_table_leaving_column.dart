import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/constants.dart';

class CustomTableLeavingColumn extends StatelessWidget {
  const CustomTableLeavingColumn({super.key, required this.timeText});
  final String timeText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text("$timeText مساءاً",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'HacenTunisia',
            color: kPrimaryColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.normal,
          )),
    );
  }
}
