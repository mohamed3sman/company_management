import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';

class CustomGridContainer extends StatelessWidget {
  const CustomGridContainer(
      {super.key, required this.imagePath, required this.orderText});

  final String imagePath;
  final String orderText;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, kVerificationScreen);
        },
        child: SizedBox(
          height: SizeConfig.screenHeight! * 0.12,
          width: SizeConfig.screenWidth! * 0.25,
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xffeaeaf7),
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                Image.asset(
                  imagePath,
                  height: SizeConfig.screenHeight! * 0.08,
                  width: 65,
                ),
                const SizedBox(
                  height: 5,
                ),
                FittedBox(
                  fit: BoxFit.fill,
                  child: Text(orderText,
                      style: TextStyle(
                        // fontFamily: 'HacenTunisia',
                        color: const Color(0xff403f3f),
                        fontSize: SizeConfig.defaultSize! * 1.2,
                        // fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.normal,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
