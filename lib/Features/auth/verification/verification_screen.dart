import 'package:animate_do/animate_do.dart';
import 'package:fingerPrint/Features/auth/verification/widgets/verification_screen_body.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: FadeInDown(child: VerificationScreenBody()),
    );
  }
}
