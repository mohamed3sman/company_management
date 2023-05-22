import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StepperCustomStep(
              color: Colors.deepPurple,
              stepNumber: '1',
            ),
            Container(
              width: 150.w,
              height: 3,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
            const StepperCustomStep(
              color: Colors.grey,
              stepNumber: '2',
            ),
          ],
        ),
      ),
    );
  }
}

class StepperCustomStep extends StatelessWidget {
  const StepperCustomStep(
      {super.key, required this.color, required this.stepNumber});
  final Color color;
  final String stepNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(14)),
      child: Text(
        stepNumber,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
