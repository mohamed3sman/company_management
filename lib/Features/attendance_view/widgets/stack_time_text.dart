import 'package:flutter/material.dart';

class StackTimeText extends StatelessWidget {
  const StackTimeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("02:36 PM",
        style: TextStyle(
          fontFamily: 'HacenTunisia',
          color: Color(0xffffffff),
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ));
  }
}
