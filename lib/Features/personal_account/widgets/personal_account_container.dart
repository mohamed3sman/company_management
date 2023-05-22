import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/styles.dart';

class PersonalAccountContainer extends StatelessWidget {
  const PersonalAccountContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Container(
            height: SizeConfig.screenHeight! * 0.11,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.15),
                borderRadius: BorderRadius.circular(14)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    text,
                    style: Styles.textStyle18.copyWith(
                      color: const Color(0xff828282),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
