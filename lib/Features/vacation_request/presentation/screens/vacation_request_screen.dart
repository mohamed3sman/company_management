import 'dart:io';

import 'package:fingerPrint/Features/vacation_request/presentation/widgets/custom_drop_down_list.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../../core/locale/app_localizations.dart';
import '../../../../core/utils/gaps.dart';
import '../../../../core/widgets/custom_orders_raw_icon.dart';
import '../../../../core/widgets/orders_text_field.dart';
import '../widgets/custom_date_picker.dart';
import 'package:file_picker/file_picker.dart';

class RequestVacationScreen extends StatefulWidget {
  const RequestVacationScreen({super.key});

  @override
  State<RequestVacationScreen> createState() => _RequestVacationScreenState();
}

class _RequestVacationScreenState extends State<RequestVacationScreen> {
  File? selectedFile;
  String? fileName;
  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: MediaQuery.of(context).size.height * .87,
          child: SingleChildScrollView(
            child: Column(
              children: [
                //  const CustomAppBar(),
                Gaps.vGap8,
                Text(
                  locale.translate('order_vacation')!,
                  style: const TextStyle(
                    color: Color(0xff000000),
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                CustomOrdersRawIcon(
                    rawText: locale.translate('vacation_type')!,
                    iconImagePath: "assets/icons/vacation_icon.png"),
                CustomDropDownList(
                    hintText: locale.translate('vacation_type')!),
                CustomOrdersRawIcon(
                    rawText: locale.translate('The_start_date_of_the_leave')!,
                    iconImagePath: "assets/icons/calender_icon.png"),
                CustomDatePicker(
                    customDatePickerText: locale.translate('from_date')!),
                CustomOrdersRawIcon(
                    rawText: locale.translate('the_end_date_of_the_leave')!,
                    iconImagePath: "assets/icons/calender_icon.png"),
                CustomDatePicker(
                    customDatePickerText: locale.translate('to_date')!),
                CustomOrdersRawIcon(
                  rawText: locale.translate('attachments')!,
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
                        elevation: 6,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * .12,
                          width: MediaQuery.of(context).size.width * .87,
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
                CustomOrdersRawIcon(
                  rawText: locale.translate('notes')!,
                  iconImagePath: "assets/icons/notes_icon.png",
                ),
                OrdersTextField(
                    height: MediaQuery.of(context).size.height * .1,
                    hintText: ""),
                Gaps.vGap15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                        screenWidth: MediaQuery.of(context).size.width * .3,
                        buttonTapHandler: () {},
                        buttonText: locale.translate('accept')!),
                    CustomButton(
                        buttonBackGroundColor: Colors.white,
                        screenWidth: MediaQuery.of(context).size.width * .3,
                        buttonTapHandler: () {},
                        buttonText: locale.translate('cancel')!)
                  ],
                ),
                // BottomNav()
              ],
            ),
          ),
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
