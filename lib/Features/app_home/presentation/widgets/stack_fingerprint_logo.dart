import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/assets.dart';

class StackFingerPrintLogo extends StatelessWidget {
  const StackFingerPrintLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsData.fingerPrint,
      width: 90.w,
    );
  }
}
