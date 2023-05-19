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
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 5), // changes position of shadow
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
