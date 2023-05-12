import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomGridContainer extends StatelessWidget {
  const CustomGridContainer(
      {super.key, required this.imagePath, required this.orderText});

  final String imagePath;
  final String orderText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, kDataTableScreen);
        },
        child: SizedBox(
          height: 100,
          width: 100,
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xffeaeaf7),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    imagePath,
                    height: 65,
                    width: 65,
                  ),
                  Text(orderText,
                      style: const TextStyle(
                        fontFamily: 'HacenTunisia',
                        color: Color(0xff403f3f),
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
