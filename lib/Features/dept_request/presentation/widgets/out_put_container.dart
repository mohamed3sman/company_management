import 'package:flutter/material.dart';

class OutPutContainer extends StatelessWidget {
  OutPutContainer(
      {super.key, required this.containerWidth, required this.containerText});
  double containerWidth;
  String containerText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.centerRight,
      width: containerWidth,
      height: MediaQuery.of(context).size.height * .06,
      decoration: BoxDecoration(
        color: Color(0xfff6f6f6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        containerText,
        style: TextStyle(
          color: Color(
            0xffababac,
          ),
        ),
      ),
    );
  }
}
