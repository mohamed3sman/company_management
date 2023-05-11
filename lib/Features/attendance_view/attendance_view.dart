import 'package:fingerPrint/Features/attendance_view/widgets/attendance_view_body.dart';
import 'package:flutter/material.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: AttendanceViewBody(),
      ),
    );
  }
}
