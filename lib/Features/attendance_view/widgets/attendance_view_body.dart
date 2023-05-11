import 'package:fingerPrint/Features/attendance_view/widgets/attendance_view_body_app_bar.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/details_snack_bar.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_day_text.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_fingerprint_logo.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_purble_container.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_time_text.dart';
import 'package:flutter/material.dart';

class AttendanceViewBody extends StatelessWidget {
  const AttendanceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                color: const Color(0xffeaeaf7),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      const AttendanceViewBodyAppBar(),
                      const SizedBox(
                        height: 30,
                      ),
                      Stack(
                        children: [
                          const Center(
                            child: StackPurbleContainer(),
                          ),
                          Center(
                            child: Column(
                              children: const [
                                StackFingerPrintLogo(),
                                StackDayText(),
                                StackTimeText()
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xffd3d1ef),
                child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container()),
              ),
            ),
          ],
        ),
        const DetailsSnackBar()
      ],
    );
  }
}
