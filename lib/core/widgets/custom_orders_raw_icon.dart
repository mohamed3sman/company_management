import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';

class CustomOrdersRawIcon extends StatelessWidget {
  const CustomOrdersRawIcon(
      {super.key, required this.rawText, required this.iconImagePath});
  final String rawText;
  final String iconImagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6, bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Image.asset(
          iconImagePath,
          width: MediaQuery.of(context).size.width * .04,
          height: MediaQuery.of(context).size.height * .04,
        ),
        Gaps.hGap12,
        Text(rawText,
            style: const TextStyle(
                color: Color(0xff828282),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 16.0)),
      ]),
    );
  }
}
