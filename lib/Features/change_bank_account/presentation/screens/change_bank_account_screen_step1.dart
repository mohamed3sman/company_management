import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/gaps.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import '../../../../core/widgets/out_put_container.dart';
import '../../../../core/widgets/custom_dot_stepper.dart';

class ChangeBankAccountScreenStep1 extends StatelessWidget {
  const ChangeBankAccountScreenStep1({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: screenSize * .07, child: const CustomAppBar()),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
          child: Column(
            children: [
              Gaps.vGap15,
               Text(
              locale.translate('bank_account_change')!,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Gaps.vGap15,
              CustomDotStepper(
                isActive: false,
                firstText: locale.translate('current_account')!,
                secondText:locale.translate('new_account')!,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Gaps.vGap30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutPutContainer(
                          containerIconPath: "assets/icons/user_icon.png",
                          containerTitle: locale.translate('employee_name')!,
                          containerWidth: screenSize.width * .40,
                          containerText: "أحمد محمد عبدالرحمن"),
                      OutPutContainer(
                          containerIconPath: "assets/icons/user_id_icon.png",
                          containerTitle: locale.translate('employee_id')!,
                          containerWidth: screenSize.width * .40,
                          containerText: "10035"),
                    ],
                  ),
                  OutPutContainer(
                      containerIconPath: "assets/icons/subtitle_icon.png",
                      containerTitle: locale.translate('jop_title')!,
                      containerWidth: screenSize.width,
                      containerText: locale.translate('user_services_officer')!),
                  OutPutContainer(
                      containerIconPath: "assets/icons/administration_icon.png",
                      containerTitle: locale.translate('management')!,
                      containerWidth: screenSize.width,
                      containerText: locale.translate('management_of_care_and_development_programs')!),
                  OutPutContainer(
                      containerIconPath: "assets/icons/department_icon.png",
                      containerTitle: locale.translate('department')!,
                      containerWidth: screenSize.width,
                      containerText: locale.translate('Social_Care_Department')!),
                  OutPutContainer(
                      containerIconPath: "assets/icons/bank_name_icon.png",
                      containerTitle: locale.translate('the_name_of_the_current_bank')!,
                      containerWidth: screenSize.width,
                      containerText: locale.translate('Rajhi_Bank')!),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutPutContainer(
                          containerIconPath: "assets/icons/bank_code_icon.png",
                          containerTitle: locale.translate('current_bank_code')!,
                          containerWidth: screenSize.width * .40,
                          containerText: "RHJI"),
                      OutPutContainer(
                          containerIconPath: "assets/icons/hashtag_icon.png",
                          containerTitle: locale.translate('current_bank_number')!,
                          containerWidth: screenSize.width * .40,
                          containerText: "RHJI"),
                    ],
                  ),
                  Gaps.vGap20,
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomButton(
          screenWidth: screenSize.width * .33,
          buttonTapHandler: () {
            BlocProvider.of<BottomNavCubit>(context).navigationQueue.addLast(
                BlocProvider.of<BottomNavCubit>(context).bottomNavIndex);
            BlocProvider.of<BottomNavCubit>(context).updateBottomNavIndex(17);
          },
          buttonText: "التالي"),
    );
  }
}
