import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.buttonBackGroundColor,
      required this.screenWidth,
      required this.buttonTapHandler,
      required this.buttonText});
  var screenWidth = 0.0;
  Function buttonTapHandler;
  String buttonText;
  Color? buttonBackGroundColor;

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
        width:screenWidth==0.0? 150.0:screenWidth,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16,
            color: buttonBackGroundColor == null ? Colors.white : kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
