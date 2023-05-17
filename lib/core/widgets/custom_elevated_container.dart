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
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFD6D6D6),
            offset: Offset(0.0, 2.0), //(x,y)
            blurRadius: 4.0,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      width: containerWidth,
      height: containerHeight,
      child: containerChild,
    );
  }
}
