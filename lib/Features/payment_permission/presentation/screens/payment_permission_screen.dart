import 'package:fingerPrint/Features/dept_request/presentation/widgets/out_put_container.dart';
import 'package:fingerPrint/Features/auth/register/widgets/custom_text_field.dart';
import 'package:fingerPrint/core/widgets/custom_app_bar.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:fingerPrint/core/widgets/custom_orders_raw_icon.dart';
import 'package:flutter/material.dart';

class PaymentPermissionScreen extends StatelessWidget {
  const PaymentPermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          child: CustomAppBar(),
          preferredSize: MediaQuery.of(context).size * .07),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 27,
          right: 25,
        ),
        child: SizedBox(
          height: screenSize.height * .8,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                const Text(
                  "إذن صرف",
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    const CustomOrdersRawIcon(
                        rawText: "رقم الإذن",
                        iconImagePath: "assets/icons/hashtag_icon.png"),
                    SizedBox(
                      width: screenSize.width * .32,
                    ),
                    const CustomOrdersRawIcon(
                        rawText: "تاريخ الإذن",
                        iconImagePath: "assets/icons/calender_icon.png")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutPutContainer(
                      containerIconPath: "assets/icons/calender_icon.png",
                      containerTitle: "",
                        containerWidth: screenSize.width * .4,
                        containerText: "125"),
                    const Spacer(),
                    OutPutContainer(
                      containerIconPath: "assets/icons/calender_icon.png",
                      containerTitle: "",
                        containerWidth: screenSize.width * .4,
                        containerText: "25/9/2023"),
                  ],
                ),
                const CustomOrdersRawIcon(
                  rawText: "المبلغ",
                  iconImagePath: "assets/icons/money_icon.png",
                ),
                CustomTextField(hintTextField: "المبلغ"),
                const CustomOrdersRawIcon(
                  rawText: "الجهة / المستفيد",
                  iconImagePath: "assets/icons/language_icon.png",
                ),
                CustomTextField(hintTextField: "إلى من يهمة الأمر"),
                const CustomOrdersRawIcon(
                  rawText: "الجوال",
                  iconImagePath: "assets/icons/phone_icon.png",
                ),
                CustomTextField(hintTextField: ""),
                const CustomOrdersRawIcon(
                    rawText: "عبارة عن",
                    iconImagePath: "assets/icons/notes_icon.png"),
                CustomTextField(hintTextField: ""),
                const CustomOrdersRawIcon(
                    rawText: "المبادرة / المشروع",
                    iconImagePath: "assets/icons/notes_icon.png"),
                CustomTextField(hintTextField: ""),
                Row(
                  children: [
                    CustomButton(
                        screenWidth: screenSize.width * .31,
                        buttonTapHandler: () {},
                        buttonText: "تأكيد"),
                    Spacer(),
                    CustomButton(
                        buttonBackGroundColor: Colors.white,
                        screenWidth: screenSize.width * .31,
                        buttonTapHandler: () {},
                        buttonText: "إلغاء")
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
