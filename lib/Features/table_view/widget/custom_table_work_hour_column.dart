import 'package:flutter/material.dart';

class CustomTableWorkHourColumn extends StatelessWidget {
  const CustomTableWorkHourColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text("7س.30د",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'HacenTunisia',
            color: Color(0xffd50a0a),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          )),
    );
  }
}
