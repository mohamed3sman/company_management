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
import '../../../../core/widgets/out_put_container.dart';
import '../../../../core/widgets/custom_dot_stepper.dart';
import '../../../bottom_nav/presentation/cubit/bottom_nav_cubit.dart';

class ChangeBankAccountScreenStep2 extends StatefulWidget {
  const ChangeBankAccountScreenStep2({super.key});

  @override
  State<ChangeBankAccountScreenStep2> createState() =>
      _ChangeBankAccountScreenStep2State();
}

class _ChangeBankAccountScreenStep2State
    extends State<ChangeBankAccountScreenStep2> {
  File? selectedFile;
  String? fileName;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: screenSize * .07, child: const CustomAppBar()),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
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
                  containerText: DateFormat.yMMMd().format(DateTime.now()),
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
                    await pickFileFromDevice();
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Card(
                        elevation: 4,
                        child: SizedBox(
                          height: screenSize.height * .12,
                          width: screenSize.width,
                          child: SizedBox(
                            child: fileName != null
                                ? Center(
                                    child: Text(fileName!),
                                  )
                                : Center(
                                    child:
                                        selectedFile == null && fileName == null
                                            ? Image.asset(
                                                "assets/images/upload_cloud.png",
                                                alignment: Alignment.center,
                                                width: 50,
                                                height: 50,
                                                //  MediaQuery.of(context).size.width * 1
                                              )
                                            : Image.file(selectedFile!),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gaps.vGap12,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                        screenWidth: MediaQuery.of(context).size.width * .3,
                        buttonTapHandler: () {},
                        buttonText: "تأكيد"),
                    CustomButton(
                      buttonBackGroundColor: Colors.white,
                      screenWidth: MediaQuery.of(context).size.width * .3,
                      buttonTapHandler: () {
                        BlocProvider.of<BottomNavCubit>(context)
                            .navigationQueue
                            .addLast(BlocProvider.of<BottomNavCubit>(context)
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
  }

  Future<void> pickFileFromDevice() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.any, allowMultiple: false);
    if (result != null) {
      PlatformFile file = result.files.first;
      if (file.extension == 'jpg' ||
          file.extension == 'jpeg' ||
          file.extension == 'png' ||
          file.extension == 'gif') {
        setState(() {
          fileName = null;
          selectedFile = selectedFile = File(result.files.single.path!);
        });
      } else if (file.extension == 'pdf') {
        setState(() {
          fileName = file.name;
        });
      }
    } else {}
  }
}
