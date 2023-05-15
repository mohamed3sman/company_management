import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Padding(
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
                Image.asset(path),
               Gaps.hGap20,
                Text(
                  text,
                  style: TextStyle(color:
                  deleteAccountColor==null?
                   Color(0xff707070):Color(deleteAccountColor!),fontSize: 20),
                  // style: Styles.textStyle18.copyWith(
                  //     color: Colors.black.withOpacity(0.6), fontSize: 16.sp),
                ),
              ],
            ),
          ),
          const Divider(color: Color(0xff707070),),
        ],
      ),
    );
  }
}
