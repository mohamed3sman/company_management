import 'package:fingerPrint/Features/employee_profile_form/presentation/widgets/custom_dot_stepper.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/employee_form_step1.dart';
import '../widgets/employee_form_step2.dart';

class EmploeeProfileForm extends StatelessWidget {
  EmploeeProfileForm({super.key});
  PageController controller = PageController();
  List<Widget> _list = <Widget>[EmployeeProfileStep1(), EmployeeProfileStep2()];
  int _curr = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: const CustomAppBar(),
        preferredSize: screenSize * .05,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Text(
                "نموذج تعريف موظف",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
             const Directionality(
                textDirection: TextDirection.ltr,
                child: CustomDotStepper(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .7,
                child: PageView(
                  controller: controller,
                  children: _list,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
