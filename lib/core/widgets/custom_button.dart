import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.buttonBackGroundColor,
      required this.screenWidth,
      required this.buttonTapHandler,
      required this.buttonText,
      this.haveBorder = false});
  final double screenWidth;
  final Function buttonTapHandler;
  final String buttonText;
  final Color? buttonBackGroundColor;
  final bool haveBorder;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        buttonTapHandler();
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            // border: Border.all(width: 1, color: kPrimaryColor),
            gradient: buttonBackGroundColor == null
                ? const LinearGradient(
                    colors: [kPrimaryColor, kSecondaryColor],
                    stops: [0, 1],
                    begin: Alignment(-0.96, -0.28),
                    end: Alignment(0.96, 0.28),
                    // angle: 106,
                    // scale: undefined,
                  )
                : LinearGradient(
                    colors: [buttonBackGroundColor!, buttonBackGroundColor!]),
            borderRadius: BorderRadius.circular(10),
            border:
                haveBorder == true ? Border.all(color: kPrimaryColor) : null),
        height: screenSize.height * .05,
        width: screenWidth == 0.0 ? 150.0 : screenWidth,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 12.sp,
            color: buttonBackGroundColor == null ? Colors.white : kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
