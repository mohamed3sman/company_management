import 'package:fingerPrint/Features/vacation_request/presentation/widgets/custom_date_picker.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:fingerPrint/core/widgets/custom_orders_raw_icon.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/orders_text_field.dart';
import '../../../vacation_request/presentation/widgets/custom_drop_down_list.dart';
import '../widgets/out_put_container.dart';

class RequestDeptScreen extends StatelessWidget {
  const RequestDeptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .77,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Text(
                          "طلب سلفة",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        CustomOrdersRawIcon(
                            rawText: "قيمة السلفة",
                            iconImagePath: "assets/icons/money_icon.png"),
                        OrdersTextField(
                          height: MediaQuery.of(context).size.height * .06,
                          hintText: "قيمة السلفة",
                        ),
                        CustomOrdersRawIcon(
                            rawText: "طريقة سداد السلفة",
                            iconImagePath: "assets/icons/vacation_icon.png"),
                        CustomDropDownList(hintText: "اختر.."),
                        Row(
                          children: [
                            CustomOrdersRawIcon(
                                rawText: "عدد الأقساط",
                                iconImagePath: "assets/icons/hashtag_icon.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                            CustomOrdersRawIcon(
                                rawText: "قيمة القسط",
                                iconImagePath: "assets/icons/money_icon.png")
                          ],
                        ),
                        Row(
                          children: [
                            OutPutContainer(
                              containerIconPath:"assets/icons/calender_icon.png" ,
                              containerTitle: "",
                              containerText: "",
                              containerWidth:
                                  MediaQuery.of(context).size.width * .4,
                            ),
                            Spacer(),
                            OutPutContainer(
                              containerIconPath: "assets/icons/calender_icon.png",
                              containerTitle: "",
                              containerText: "",
                              containerWidth:
                                  MediaQuery.of(context).size.width * .4,
                            ),
                          ],
                        ),
                        CustomOrdersRawIcon(
                          rawText: "تاريخ بداية الخصم",
                          iconImagePath: "assets/icons/calender_icon.png",
                        ),
                        CustomDatePicker(customDatePickerText: ""),
                        Row(
                          children: [
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
                              containerWidth:
                                  MediaQuery.of(context).size.width * .4,
                            ),
                            Spacer(),
                            OutPutContainer(
                                  containerIconPath: "assets/icons/calender_icon.png",
                              containerTitle: "",
                              containerText: "5",
                              containerWidth:
                                  MediaQuery.of(context).size.width * .4,
                            ),
                          ],
                        ),
                        CustomOrdersRawIcon(
                          rawText: "تاريخ آخر سلفة",
                          iconImagePath: "assets/icons/calender_icon.png",
                        ),
                        OutPutContainer(
                              containerIconPath: "assets/icons/calender_icon.png",
                              containerTitle: "",
                          containerWidth: double.infinity,
                          containerText: "05/15/2023",
                        ),
                        CustomOrdersRawIcon(
                          rawText: "السبب",
                          iconImagePath: "assets/icons/notes_icon.png",
                        ),
                        OrdersTextField(
                          height: 50,
                          hintText: "السبب",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  CustomButton(
                      screenWidth: MediaQuery.of(context).size.width * .3,
                      buttonTapHandler: () {},
                      buttonText: "تأكيد"),
                  Spacer(),
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
    );
  }
}
