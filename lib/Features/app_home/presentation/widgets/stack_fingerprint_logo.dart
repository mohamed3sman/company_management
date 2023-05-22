import 'package:fingerPrint/Features/app_home/presentation/widgets/registration_alert.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class StackFingerPrintLogo extends StatelessWidget {
  const StackFingerPrintLogo({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        // set up the AlertDialog
        AlertDialog alert = alertRegistration(context);

        // show the dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      },
      child: Image.asset(
        AssetsData.fingerPrint,
        width: SizeConfig.screenWidth! * 0.25,
      ),
    );
  }
}
