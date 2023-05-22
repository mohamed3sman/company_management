import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/widgets/custom_app_bar.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_stepper/stepper.dart';

import '../../../bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import '../../../../core/widgets/custom_dot_stepper.dart';
import '../widgets/employee_form_step1.dart';

class EmployeeProfileFormScreenStep1 extends StatelessWidget {
  const EmployeeProfileFormScreenStep1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: screenSize * .1, child: const CustomAppBar()),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
            child: Column(
              children: [
                NumberStepper(numbers: [
                  1,
                  2,
                ]),
                IconStepper(
                  direction: Axis.horizontal,
                  stepColor: Colors.transparent,
                  activeStepColor: Colors.transparent,
                  activeStepBorderColor: Colors.transparent,
                  activeStepBorderPadding: 0,
                  enableNextPreviousButtons: false,
                  lineColor: const Color(0xff09b214),
                  lineLength: 10,
                  alignment: Alignment.topCenter,
                  icons: [
                    Icon(
                      Icons.check_circle,
                      color: const Color(0xff09b214),
                      size: 20,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: const Color(0xff09b214),
                      size: 20,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: const Color(0xff09b214),
                      size: 20,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: const Color(0xff09b214),
                      size: 20,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: const Color(0xff09b214),
                      size: 20,
                    ),
                  ],
                ),

                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Column(children: [
                //     const Text(
                //       "نموذج تعريف موظف",
                //       style: TextStyle(
                //         fontSize: 15,
                //       ),
                //     ),
                //     Gaps.vGap15,
                //     CustomDotStepper(
                //         isActive: false,
                //         firstText: "تعريف موظف",
                //         secondText: "عرض النموذج"),
                //     //   SizedBox(height: screenSize.height*.1,),
                //   ]),
                // ),
                Gaps.vGap20,
                const EmployeeProfileStep1(),
              ],
            ),
          ),
        ),
        floatingActionButton: CustomButton(
          screenWidth: screenSize.width * .35,
          buttonTapHandler: () {
            BlocProvider.of<BottomNavCubit>(context).navigationQueue.addLast(
                BlocProvider.of<BottomNavCubit>(context).bottomNavIndex);
            BlocProvider.of<BottomNavCubit>(context).updateBottomNavIndex(11);
          },
          buttonText: "عرض النموذج",
        ),
      ),
    );
  }
}
