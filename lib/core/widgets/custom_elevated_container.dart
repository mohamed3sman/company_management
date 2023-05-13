import 'package:flutter/material.dart';

class CustomElevatedContainer extends StatelessWidget {
  CustomElevatedContainer(
      {super.key,
      required this.containerHeight,
      required this.containerWidth,
      required this.containerChild});
  double containerWidth;
  double containerHeight;
  Widget containerChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      width: containerWidth,
      height: containerHeight,
      child: containerChild,
    );
  }
}
