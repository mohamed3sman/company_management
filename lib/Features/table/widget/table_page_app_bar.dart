import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TablePageAppBarTitle extends StatelessWidget {
  const TablePageAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "الحضور والانصراف",
      style: TextStyle(
        fontFamily: 'HacenTunisia',
        color: const Color(0xff282828),
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
