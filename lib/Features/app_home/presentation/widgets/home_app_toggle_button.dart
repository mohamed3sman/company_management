import 'package:fingerPrint/Features/app_home/presentation/widgets/registration_alert.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeAppToggleButton extends StatelessWidget {
  const HomeAppToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ToggleSwitch(
        minWidth: SizeConfig.screenWidth! * 0.20,
        minHeight: 30.sp,
        cornerRadius: 50.0,
        borderColor: [Colors.white],
        activeBgColors: const [
          [kPrimaryColor],
          [kPrimaryColor]
        ],
        activeFgColor: Colors.white,
        inactiveBgColor: Colors.white,
        inactiveFgColor: kPrimaryColor,
        textDirectionRTL: true,
        initialLabelIndex: 0,
        totalSwitches: 2,
        labels: const ['حضور', 'إنصراف'],
        radiusStyle: true,
        onToggle: (index) {
          if (index == 1) {
            // set up the AlertDialog
            AlertDialog alert = alertLeaveRegistration(context);

            // show the dialog
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              },
            );
          }
        });
  }
}
