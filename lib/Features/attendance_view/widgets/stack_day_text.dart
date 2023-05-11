import 'package:flutter/material.dart';

class StackDayText extends StatelessWidget {
  const StackDayText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text("الأحد :2023/5/7",
          style: TextStyle(
            fontFamily: 'HacenTunisia',
            color: Color(0xffffffff),
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          )),
    );
  }
}
