import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackDayText extends StatelessWidget {
  const StackDayText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text("الأحد :2023/5/7",
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
