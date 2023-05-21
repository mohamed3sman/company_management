import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDotStepper extends StatelessWidget {
  CustomDotStepper({super.key, required this.isActive});
  bool? isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(12)),
          child: Text(
            "1",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .4,
          child: Divider(
              // height: 2,
              thickness: 1,
              color: isActive! ? kPrimaryColor : Colors.grey),
        ),
        Container(
          alignment: Alignment.center,
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: isActive! ? kPrimaryColor : Colors.grey,
              borderRadius: BorderRadius.circular(12)),
          child: Text("2", style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
