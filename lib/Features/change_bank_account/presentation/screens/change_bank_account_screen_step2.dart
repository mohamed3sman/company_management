import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fingerPrint/Features/request_vacation/presentation/widgets/custom_drop_down_list.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:fingerPrint/core/widgets/custom_orders_raw_icon.dart';
import 'package:fingerPrint/core/widgets/custom_request_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/gaps.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_elevated_container.dart';
import '../../../../core/widgets/out_put_container.dart';
import '../../../../core/widgets/custom_dot_stepper.dart';
import '../../../bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import '../../../request_vacation/presentation/cubit/request_vacation_cubit.dart';

class ChangeBankAccountScreenStep2 extends StatelessWidget {
   ChangeBankAccountScreenStep2({super.key});

  File? selectedFile;

  String? fileName;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return BlocProvider<RequestVacationCubit>(
      create: (context) => RequestVacationCubit(),
      child: BlocConsumer<RequestVacationCubit,RequestVacationState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
                preferredSize: screenSize * .07, child: const CustomAppBar()),
            body: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
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
                    isActive: true,
                    firstText: "حساب حالي",
                    secondText: "حساب جديد",
                  ),
                  Column(
                    children: [
                      Gaps.vGap15,
                      OutPutContainer(
                        containerIconPath: "assets/icons/calender_icon.png",
                        containerTitle: "التاريخ",
                        containerWidth: screenSize.width,
                        containerText:
                            DateFormat.yMMMd().format(DateTime.now()),
                      ),
                      const CustomOrdersRawIcon(
                        rawText: "اسم البنك الجديد",
                        iconImagePath: "assets/icons/bank_name_icon.png",
                      ),
                      Gaps.vGap15,
                      CustomDropDownList(hintText: "بنك الراجحي"),
                      Gaps.vGap15,
                      OutPutContainer(
                          containerIconPath: "assets/icons/bank_code_icon.png",
                          containerTitle: "كود البنك الجديد",
                          containerWidth: screenSize.width,
                          containerText: "RHJI"),
                      const CustomOrdersRawIcon(
                        rawText: "رقم الحساب الجديد",
                        iconImagePath: "assets/icons/hashtag_icon.png",
                      ),
                      CustomRequestsTextField(hintTextField: "رقم الحساب "),
                      const CustomOrdersRawIcon(
                        rawText: "صورة الحساب الجديد",
                        iconImagePath: "assets/icons/attach_icon.png",
                      ),
                      GestureDetector(
                        onTap: () async {
                          await BlocProvider.of<RequestVacationCubit>(context)
                              .pickFileFromDevice();
                        },
                        child: CustomElevatedContainer(
                          containerHeight:
                              MediaQuery.of(context).size.height * .12,
                          containerWidth: MediaQuery.of(context).size.width,
                          containerChild: SizedBox(
                            child: BlocProvider.of<RequestVacationCubit>(
                                            context)
                                        .fileName !=
                                    null
                                ? Center(
                                    child: Text(
                                        BlocProvider.of<RequestVacationCubit>(
                                                context)
                                            .fileName!),
                                  )
                                : Center(
                                    child: BlocProvider.of<RequestVacationCubit>(
                                                        context)
                                                    .selectedFile ==
                                                null &&
                                            BlocProvider.of<RequestVacationCubit>(
                                                        context)
                                                    .fileName ==
                                                null
                                        ? Image.asset(
                                            "assets/images/upload_cloud.png",
                                            alignment: Alignment.center,
                                            width: 50,
                                            height: 50,
                                            //  MediaQuery.of(context).size.width * 1
                                          )
                                        : Image.file(BlocProvider.of<
                                                RequestVacationCubit>(context)
                                            .selectedFile!),
                                  ),
                          ),
                        ),
                      ),
                      Gaps.vGap12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                              screenWidth:
                                  MediaQuery.of(context).size.width * .3,
                              buttonTapHandler: () {},
                              buttonText: "تأكيد"),
                          CustomButton(
                            buttonBackGroundColor: Colors.white,
                            screenWidth: MediaQuery.of(context).size.width * .3,
                            buttonTapHandler: () {
                              BlocProvider.of<BottomNavCubit>(context)
                                  .navigationQueue
                                  .addLast(
                                      BlocProvider.of<BottomNavCubit>(context)
                                          .bottomNavIndex);
                              BlocProvider.of<BottomNavCubit>(context)
                                  .updateBottomNavIndex(16);
                            },
                            buttonText: "إلغاء",
                            haveBorder: true,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
          ;
        },
        listener: (context, state) {},
      ),
    );
  }
}
