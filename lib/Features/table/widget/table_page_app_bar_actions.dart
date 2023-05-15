import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TablePageAppBarActions extends StatelessWidget {
  const TablePageAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 5.sp),
      padding: EdgeInsets.only(left: 12.sp),
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Text("2023",
              style: TextStyle(
                fontFamily: 'HacenTunisia',
                color: const Color(0xff5e5e5e),
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.date_range,
              color: const Color(0xff7350cb),
              size: 22.sp,
            ),
          )
        ],
      ),
    );
  }
}
