import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTableDateColumnItem extends StatelessWidget {
  const CustomTableDateColumnItem(
      {super.key, required this.dayName, required this.dayNumber});

  final String dayName;
  final String dayNumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(dayNumber,
                style: TextStyle(
                  fontFamily: 'HacenTunisia',
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                )),
            Text(dayName,
                style: TextStyle(
                  fontFamily: 'HacenTunisia',
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                )),
          ],
        ),
      ),
    );
  }
}
