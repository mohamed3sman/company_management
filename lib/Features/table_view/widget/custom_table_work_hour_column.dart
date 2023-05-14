import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTableWorkHourColumn extends StatelessWidget {
  const CustomTableWorkHourColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text("7س.30د",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'HacenTunisia',
            color: const Color(0xffd50a0a),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          )),
    );
  }
}
