import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomRowTimeOfRegister extends StatelessWidget {
  const CustomRowTimeOfRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gaps.vGap50,

        CustomButton(buttonBackGroundColor: Colors.white,screenWidth:  MediaQuery.of(context).size.width*0.2, buttonTapHandler: (){},
            buttonText: "الغاء"),
        Gaps.hGap30,
        CustomButton(screenWidth:  MediaQuery.of(context).size.width*0.2, buttonTapHandler: (){},
            buttonText: "تاكيد"),
        Gaps.vGap50,
      ],
    );
  }
}
