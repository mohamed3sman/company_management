import 'package:animate_do/animate_do.dart';
import 'package:fingerPrint/Features/request_vacation/presentation/widgets/custom_date_picker.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
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
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: FadeInUp(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: screenSize * .1, child: const CustomAppBar()),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 30),
              child: Column(
                children: [
                   Text(
                     locale.translate('order_cache')!,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                   CustomOrdersRawIcon(
                      rawText: locale.translate('order_value')!,
                      iconImagePath: "assets/icons/money_icon.png"),
                  CustomRequestsTextField(
                    containerHeight: MediaQuery.of(context).size.height * .06,
                    hintTextField:locale.translate('order_value')!,
                  ),
                   CustomOrdersRawIcon(
                      rawText: locale.translate('the_method_of_paying_the_cach')!,
                      iconImagePath: "assets/icons/vacation_icon.png"),
                  CustomDropDownList(hintText:locale.translate('choose')!),
                  Row(
                    children: [
                       CustomOrdersRawIcon(
                          rawText: locale.translate('number_of_installments')!,
                          iconImagePath: "assets/icons/hashtag_icon.png"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .2,
                      ),
                       CustomOrdersRawIcon(
                          rawText: locale.translate('value_of_Installment')!,
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
                   CustomOrdersRawIcon(
                    rawText: locale.translate('discount_start_date')!,
                    iconImagePath: "assets/icons/calender_icon.png",
                  ),
                  const CustomDatePicker(customDatePickerText: ""),
                  Row(
                    children:  [
                      CustomOrdersRawIcon(
                          rawText: locale.translate('advance_limit')!,
                          iconImagePath: "assets/icons/money_icon.png"),
                      Spacer(),
                      CustomOrdersRawIcon(
                          rawText: locale.translate('number_of_previous_advances')!,
                          iconImagePath: "assets/icons/hashtag_icon.png")
                    ],
                  ),
                  Row(
                    children: [
                      OutPutContainer(
                        containerIconPath: "assets/icons/calender_icon.png",
                        containerTitle: "",
                        containerText: "500 ${ locale.translate('pound')!}",
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
                   CustomOrdersRawIcon(
                    rawText: locale.translate('date_of_the_last_advance')!,
                    iconImagePath: "assets/icons/calender_icon.png",
                  ),
                  OutPutContainer(
                    containerIconPath: "assets/icons/calender_icon.png",
                    containerTitle: "",
                    containerWidth: double.infinity,
                    containerText: "05/15/2023",
                  ),
                   CustomOrdersRawIcon(
                    rawText:  locale.translate('reason')!,
                    iconImagePath: "assets/icons/notes_icon.png",
                  ),
                  CustomRequestsTextField(
                    containerHeight: 50,
                    hintTextField:  locale.translate('reason')!,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        CustomButton(
                            screenWidth: MediaQuery.of(context).size.width * .3,
                            buttonTapHandler: () {},
                            buttonText: locale.translate('confirm')!),
                        const Spacer(),
                        CustomButton(
                            buttonBackGroundColor: Colors.white,
                            screenWidth: MediaQuery.of(context).size.width * .3,
                            buttonTapHandler: () {},
                            buttonText:  locale.translate('cancel')!)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
