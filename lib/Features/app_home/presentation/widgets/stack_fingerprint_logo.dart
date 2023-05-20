import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class StackFingerPrintLogo extends StatelessWidget {
  const StackFingerPrintLogo({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Image.asset(
      AssetsData.fingerPrint,
      width: SizeConfig.screenWidth! * 0.29,
    );
  }
}
