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
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: const Color(0xffeaeaf7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(dayNumber,
                style: TextStyle(
                  fontFamily: 'HacenTunisia',
                  color: const Color(0xcc5647b2),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),
            Text(dayName,
                style: TextStyle(
                  fontFamily: 'HacenTunisia',
                  color: const Color(0xcc5647b2),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),
          ],
        ),
      ),
    );
  }
}
