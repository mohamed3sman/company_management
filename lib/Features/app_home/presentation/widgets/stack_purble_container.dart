import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';

class StackPurbleContainer extends StatelessWidget {
  const StackPurbleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth! * 0.80,
      height: SizeConfig.screenHeight! * 0.33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [
            kSecondaryColor,
            kPrimaryColor,
            kSecondaryColor,
          ],
          stops: [0, 0.4560239911079407, 1],
          begin: Alignment(-0.73, -0.68),
          end: Alignment(0.73, 0.68),
        ),
      ),
    );
  }
}
