import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TablePageAppBarActions extends StatelessWidget {
  const TablePageAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
              color: Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
              spreadRadius: 0),
        ],
      ),
      child: Row(
        children: [
          Text("2023",
              style: TextStyle(
                  color: const Color(0xff5e5e5e),
                  fontWeight: FontWeight.w700,
                  fontFamily: "HacenTunisia",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.sp),
              textAlign: TextAlign.left),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.date_range,
              color: kPrimaryColor,
              size: 22.sp,
            ),
          ),
        ],
      ),
    );
  }
}
