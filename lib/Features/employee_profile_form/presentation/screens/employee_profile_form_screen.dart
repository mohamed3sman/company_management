import 'package:fingerPrint/Features/employee_profile_form/presentation/widgets/employee_form_step2.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';

import 'package:im_stepper/stepper.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_orders_raw_icon.dart';
import '../../../dept_request/presentation/widgets/out_put_container.dart';
import '../../../register/widgets/custom_text_field.dart';
import '../../../vacation_request/presentation/widgets/custom_drop_down_list.dart';
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
