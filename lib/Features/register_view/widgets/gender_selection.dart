import 'package:fingerPrint/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Text(
              'أنثي',
              style: Styles.textStyle18,
            ),
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
            )
          ],
        ),
        SizedBox(
          width: 50,
        ),
        Row(
          children: [
            Text(
              'ذكر',
              style: Styles.textStyle18,
            ),
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
            )
          ],
        ),
      ],
    );
  }
}
