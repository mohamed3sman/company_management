import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

import '../../../../core/utils/constants.dart';

class CustomDotStepper extends StatelessWidget {
  const CustomDotStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        DotStepper(
          tappingEnabled: false,
          spacing: MediaQuery.of(context).size.width * .35,
          onDotTapped: (tappedDotIndex) {},
          lineConnectorsEnabled: true,
          lineConnectorDecoration: const LineConnectorDecoration(
            color: kPrimaryColor,
            strokeWidth: 2.0,
          ),
          activeStep: 1,
          shape: Shape.squircle,
          indicator: Indicator.jump,
          indicatorDecoration: IndicatorDecoration(
            color: kPrimaryColor,
          ),
          dotCount: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text("2"), Text("1")],
        )
      ],
    );
  }
}
