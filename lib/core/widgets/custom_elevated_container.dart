import 'package:flutter/material.dart';

class CustomElevatedContainer extends StatelessWidget {
  const CustomElevatedContainer(
      {super.key,
      required this.containerHeight,
      required this.containerWidth,
      required this.containerChild});
  final double containerWidth;
  final double containerHeight;
  final Widget containerChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xfff9f9f9),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1c000000),
            offset: Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      width: containerWidth,
      height: containerHeight,
      child: containerChild,
    );
  }
}
