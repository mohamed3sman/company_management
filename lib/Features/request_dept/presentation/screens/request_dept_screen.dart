import 'package:fingerPrint/Features/request_vacation/presentation/widgets/custom_date_picker.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:fingerPrint/core/widgets/custom_orders_raw_icon.dart';
import 'package:fingerPrint/core/widgets/custom_request_text_field.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../request_vacation/presentation/widgets/custom_drop_down_list.dart';
import '../../../../core/widgets/out_put_container.dart';

class RequestDeptScreen extends StatelessWidget {
  const RequestDeptScreen({super.key});

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
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 30),
            child: Column(
              children: [
                const Text(
                  "طلب سلفة",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const CustomOrdersRawIcon(
                    rawText: "قيمة السلفة",
                    iconImagePath: "assets/icons/money_icon.png"),
                CustomRequestsTextField(
                  containerHeight: MediaQuery.of(context).size.height * .06,
                  hintTextField: "قيمة السلفة",
                ),
                const CustomOrdersRawIcon(
                    rawText: "طريقة سداد السلفة",
                    iconImagePath: "assets/icons/vacation_icon.png"),
                CustomDropDownList(hintText: "اختر.."),
                Row(
                  children: [
                    const CustomOrdersRawIcon(
                        rawText: "عدد الأقساط",
                        iconImagePath: "assets/icons/hashtag_icon.png"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .2,
                    ),
                    const CustomOrdersRawIcon(
                        rawText: "قيمة القسط",
                        iconImagePath: "assets/icons/money_icon.png")
                  ],
                ),
                Row(
                  children: [
                    OutPutContainer(
                      containerIconPath: "assets/icons/calender_icon.png",
                      containerTitle: "",
                      containerText: "",
                      containerWidth: MediaQuery.of(context).size.width * .4,
                    ),
                    const Spacer(),
                    OutPutContainer(
                      containerIconPath: "assets/icons/calender_icon.png",
                      containerTitle: "",
                      containerText: "",
                      containerWidth: MediaQuery.of(context).size.width * .4,
                    ),
                  ],
                ),
                const CustomOrdersRawIcon(
                  rawText: "تاريخ بداية الخصم",
                  iconImagePath: "assets/icons/calender_icon.png",
                ),
                const CustomDatePicker(customDatePickerText: ""),
                Row(
                  children: const [
                    CustomOrdersRawIcon(
                        rawText: "حد السلفة",
                        iconImagePath: "assets/icons/money_icon.png"),
                    Spacer(),
                    CustomOrdersRawIcon(
                        rawText: "عدد مرات السلف السابقة",
                        iconImagePath: "assets/icons/hashtag_icon.png")
                  ],
                ),
                Row(
                  children: [
                    OutPutContainer(
                      containerIconPath: "assets/icons/calender_icon.png",
                      containerTitle: "",
                      containerText: "500 جنية",
                      containerWidth: MediaQuery.of(context).size.width * .4,
                    ),
                    const Spacer(),
                    OutPutContainer(
                      containerIconPath: "assets/icons/calender_icon.png",
                      containerTitle: "",
                      containerText: "5",
                      containerWidth: MediaQuery.of(context).size.width * .4,
                    ),
                  ],
                ),
                const CustomOrdersRawIcon(
                  rawText: "تاريخ آخر سلفة",
                  iconImagePath: "assets/icons/calender_icon.png",
                ),
                OutPutContainer(
                  containerIconPath: "assets/icons/calender_icon.png",
                  containerTitle: "",
                  containerWidth: double.infinity,
                  containerText: "05/15/2023",
                ),
                const CustomOrdersRawIcon(
                  rawText: "السبب",
                  iconImagePath: "assets/icons/notes_icon.png",
                ),
                CustomRequestsTextField(
                  containerHeight: 50,
                  hintTextField: "السبب",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      CustomButton(
                          screenWidth: MediaQuery.of(context).size.width * .3,
                          buttonTapHandler: () {},
                          buttonText: "تأكيد"),
                      const Spacer(),
                      CustomButton(
                          buttonBackGroundColor: Colors.white,
                          screenWidth: MediaQuery.of(context).size.width * .3,
                          buttonTapHandler: () {},
                          buttonText: "إلغاء")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
