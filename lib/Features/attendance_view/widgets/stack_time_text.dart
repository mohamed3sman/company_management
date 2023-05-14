import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackTimeText extends StatelessWidget {
  const StackTimeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("02:36 PM",
        style: TextStyle(
          fontFamily: 'HacenTunisia',
          color: const Color(0xffffffff),
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ));
  }
}
