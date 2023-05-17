import 'package:fingerPrint/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Transform.translate(
              offset: const Offset(-7, 0),
              child: Radio(
                  activeColor: const Color(0xff9a80d9),
                  value: 'ذكر',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value as String;
                    });
                  }),
            ),
            Text(
              'ذكر',
              style: Styles.textStyle18.copyWith(fontSize: 15.sp),
            ),
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        Row(
          children: [
            Transform.translate(
              offset: const Offset(-7, 0),
              child: Radio(
                  activeColor: const Color(0xff9a80d9),
                  value: 'أنثي',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value as String;
                    });
                  }),
            ),
            Text(
              'أنثي',
              style: Styles.textStyle18.copyWith(fontSize: 15.sp),
            ),
          ],
        ),
      ],
    );
  }
}
