import 'package:fingerPrint/Features/terms_and_conditions_view/presentation/widgets/terms_and_conditions_view_body.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: TermsAndConditionsViewBody(),
    );
  }
}
