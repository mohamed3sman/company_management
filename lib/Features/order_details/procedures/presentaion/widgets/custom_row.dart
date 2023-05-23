import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomOrderItem extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  final String imgscr;
  final bool hasStatusIcon;
  const CustomOrderItem(
      {Key? key,
      required this.hasStatusIcon,
      required this.titleText,
      required this.subTitleText,
      required this.imgscr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(.1),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Center(
          child: Image.asset(
            imgscr,
            color: kPrimaryColor,
          ),
        ),
      ),
      title: Text(
        titleText,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
      subtitle: Row(
        children: [
          hasStatusIcon
              ? const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Icon(
                    Icons.circle,
                    color: Color(0xffF1DA0B),
                    size: 13,
                  ),
                )
              : Container(),
          Text(
            subTitleText,
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
