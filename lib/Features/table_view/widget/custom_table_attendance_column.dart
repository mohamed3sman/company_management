import 'package:flutter/material.dart';

class CustomTableAttendanceColumn extends StatelessWidget {
  const CustomTableAttendanceColumn({super.key, required this.timeText});
  final String timeText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text("$timeText صباحاً",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'HacenTunisia',
            color: Color(0xff99979c),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          )),
    );
  }
}
