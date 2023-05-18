import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/employee_form_step1.dart';

class EmploeeProfileForm extends StatelessWidget {
  const EmploeeProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: const CustomAppBar(),
        preferredSize: screenSize * .05,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 12,
        ),
        child: EmployeeProfileStep1(),
      ),
    );
  }
}
