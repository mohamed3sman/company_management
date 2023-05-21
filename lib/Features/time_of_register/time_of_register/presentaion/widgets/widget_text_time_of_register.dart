import 'package:fingerPrint/Features/auth/register/widgets/styles.dart';
import 'package:flutter/material.dart';

class CustomTimeOfRegister extends StatelessWidget {
  final String text;
  const CustomTimeOfRegister({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Styles.textStyle16,
    );
  }
}
