import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/gaps.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import '../../../dept_request/presentation/widgets/out_put_container.dart';
import '../../../employee_profile_form/presentation/widgets/custom_dot_stepper.dart';

class ChangeBankAccountScreenStep1 extends StatelessWidget {
  const ChangeBankAccountScreenStep1({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: screenSize * .07, child: const CustomAppBar()),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
        ),
        child: Column(
          children: [
            Gaps.vGap15,
            const Text(
              "تغيير حساب بنكي ",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Gaps.vGap15,
            CustomDotStepper(
              isActive: false,
              firstText: "حساب حالي",
              secondText: "حساب جديد",
            ),
            SizedBox(
              height: screenSize.height * .65,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Gaps.vGap15,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutPutContainer(
                            containerIconPath: "assets/icons/user_icon.png",
                            containerTitle: "اسم الموظف",
                            containerWidth: screenSize.width * .45,
                            containerText: "أحمد محمد عبدالرحمن"),
                        OutPutContainer(
                            containerIconPath: "assets/icons/user_id_icon.png",
                            containerTitle: "كود الموظف",
                            containerWidth: screenSize.width * .45,
                            containerText: "10035"),
                      ],
                    ),
                    OutPutContainer(
                        containerIconPath: "assets/icons/subtitle_icon.png",
                        containerTitle: "المسمى الوظيفي",
                        containerWidth: screenSize.width,
                        containerText: "مسؤول خدمات المستفيدين"),
                    OutPutContainer(
                        containerIconPath:
                            "assets/icons/administration_icon.png",
                        containerTitle: "الإدارة",
                        containerWidth: screenSize.width,
                        containerText: "إدارة الرعاية والبرامج التنموية"),
                    OutPutContainer(
                        containerIconPath: "assets/icons/department_icon.png",
                        containerTitle: "القسم",
                        containerWidth: screenSize.width,
                        containerText: "قسم الرعاية الإجتماعية"),
                    OutPutContainer(
                        containerIconPath: "assets/icons/bank_name_icon.png",
                        containerTitle: "اسم البنك الحالي",
                        containerWidth: screenSize.width,
                        containerText: "مصرف الراجحي"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutPutContainer(
                            containerIconPath:
                                "assets/icons/bank_code_icon.png",
                            containerTitle: "كود البنك الحالي",
                            containerWidth: screenSize.width * .45,
                            containerText: "RHJI"),
                        OutPutContainer(
                            containerIconPath: "assets/icons/hashtag_icon.png",
                            containerTitle: "رقم الحساب الحالي",
                            containerWidth: screenSize.width * .45,
                            containerText: "RHJI"),
                      ],
                    ),
                    CustomButton(
                        screenWidth: screenSize.width * .33,
                        buttonTapHandler: () {
                     BlocProvider.of<BottomNavCubit>(context).navigationQueue.addLast(
                BlocProvider.of<BottomNavCubit>(context).bottomNavIndex);
            BlocProvider.of<BottomNavCubit>(context).updateBottomNavIndex(17);
         
                        },
                        buttonText: "التالي")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
