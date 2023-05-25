import 'package:animate_do/animate_do.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomSettingRow extends StatelessWidget {
  CustomSettingRow(
      {super.key,
      this.deleteAccountColor,
      required this.path,
      required this.text,
      required this.function});

  final String text;
  final String path;
  final Function function;
  late int? deleteAccountColor;
  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                function();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    path,
                    width: 20.sp,
                    height: 20.sp,
                  ),
                  Gaps.hGap20,
                  Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: deleteAccountColor == null
                            ? const Color(0xff707070)
                            : Color(deleteAccountColor!),
                        fontSize: 12.sp),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
