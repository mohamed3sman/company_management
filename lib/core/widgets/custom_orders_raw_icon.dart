import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';

class CustomOrdersRawIcon extends StatelessWidget {
  const CustomOrdersRawIcon({super.key, required this.rawText, required this.rawIcon});
final String rawText;
final Icon rawIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 6),
      child: Row(children: [
        rawIcon,
      Gaps.hGap12,
        Text(rawText,
            style: const TextStyle(
                color: const Color(0xff828282),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 16.0))
      ]),
    );
  }
}
