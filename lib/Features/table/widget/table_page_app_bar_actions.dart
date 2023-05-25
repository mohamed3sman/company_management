import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TablePageAppBarActions extends StatelessWidget {
  const TablePageAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
     margin: EdgeInsets.symmetric(vertical: 10),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.date_range,
              color: kPrimaryColor,
              size: 15.sp,
            ),
          ),
<<<<<<< HEAD
          Text(
=======
         Text(
>>>>>>> 13e7335a6930c5da672cac5391a9a2df5ac0398e
            "2023",
            style: TextStyle(color: const Color(0xff5e5e5e), fontSize: 11.sp),
          ),
        ],
      ),
    );
  }
}
