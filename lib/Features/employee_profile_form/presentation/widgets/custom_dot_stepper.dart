import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDotStepper extends StatelessWidget {
  CustomDotStepper({
    super.key,
    required this.isActive,
    required this.firstText,
    required this.secondText,
  });
  bool? isActive;
  String firstText;
  String secondText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(12)),
              child: const Text(
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
              child: const Text("2", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              firstText,
              style:const TextStyle(color: kTextColor),
            ),
            Text(
              secondText,
              style: const TextStyle(color: kTextColor),
            )
          ],
        )
      ],
    );
  }
}
