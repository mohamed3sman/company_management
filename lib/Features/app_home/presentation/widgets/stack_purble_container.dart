import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackPurbleContainer extends StatelessWidget {
  const StackPurbleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth! * 0.77,
      height: 200.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [Color(0xff5647b2), Color(0xffafaadb), Color(0xff5647b2)],
          stops: [0, 0.4560239911079407, 1],
          begin: Alignment(-0.73, -0.68),
          end: Alignment(0.73, 0.68),
        ),
      ),
    );
  }
}
