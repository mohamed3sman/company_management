import 'package:fingerPrint/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_dot_stepper.dart';
import '../widgets/employee_form_step2.dart';

class EmployeeProfileFormScreenStep2 extends StatelessWidget {
  const EmployeeProfileFormScreenStep2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: screenSize * .1, child: const CustomAppBar()),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                const Text(
                  "نموذج تعريف موظف",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                CustomDotStepper(
                    isActive: true,
                    firstText: "تعريف موظف",
                    secondText: "عرض النموذج"),
                SizedBox(
                  height: screenSize.height * .05,
                ),
                const EmployeeProfileStep2(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
