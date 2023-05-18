import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeAppToggleButton extends StatelessWidget {
  const HomeAppToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ToggleSwitch(
      minWidth: SizeConfig.screenWidth! * 0.20,
      cornerRadius: 20.0,
      activeBgColors: const [
        [Colors.deepPurple],
        [Colors.deepPurple]
      ],
      activeFgColor: Colors.white,
      inactiveBgColor: Colors.white,
      inactiveFgColor: Colors.deepPurple,
      textDirectionRTL: true,
      initialLabelIndex: 1,
      totalSwitches: 2,
      labels: const ['إنصراف', 'حضور'],
      radiusStyle: true,
      onToggle: (index) {
        print('switched to: $index');
      },
    );
  }
}
