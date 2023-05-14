import 'package:fingerPrint/Features/attendance_view/widgets/attendance_view_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: AttendanceViewBody(),
      ),
    );
  }
}
