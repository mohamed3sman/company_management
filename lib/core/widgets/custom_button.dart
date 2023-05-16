import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.buttonBackGroundColor,
      required this.screenWidth,
      required this.buttonTapHandler,
      required this.buttonText});
  final double screenWidth;
  final Function buttonTapHandler;
  final String buttonText;
  final Color? buttonBackGroundColor;

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
          border: Border.all(width: 2, color: kPrimaryColor),
          gradient: buttonBackGroundColor == null
              ? LinearGradient(colors: [
                  kPrimaryColor,
                  kSecondaryColor,
                ])
              : LinearGradient(
                  colors: [buttonBackGroundColor!, buttonBackGroundColor!]),
          borderRadius: BorderRadius.circular(15),
        ),
        height: screenSize.height * .06,
        width: screenWidth == 0.0 ? 150.0 : screenWidth,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 18.sp,
            color: buttonBackGroundColor == null ? Colors.white : kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
