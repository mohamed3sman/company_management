import 'package:flutter/material.dart';

import '../../../../core/locale/app_localizations.dart';
import '../../../../core/utils/gaps.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_orders_raw_icon.dart';
import '../../../vacation_request/presentation/widgets/custom_date_picker.dart';
import '../../../vacation_request/presentation/widgets/custom_drop_down_list.dart';
import '../widgets/custom_time_picker_widget.dart';

class PermissinRequestScreen extends StatefulWidget {
  const PermissinRequestScreen({super.key});

  @override
  State<PermissinRequestScreen> createState() => _PermissinRequestScreenState();
}

class _PermissinRequestScreenState extends State<PermissinRequestScreen> {
  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: MediaQuery.of(context).size.height * .87,
          child: SingleChildScrollView(
            child: Column(
              children: [
                //     const CustomAppBar(),
                Gaps.vGap8,
                Text(
                  locale.translate('permission_request')!,
                  style: const TextStyle(
                    color: Color(0xff000000),
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                 CustomOrdersRawIcon(
                    rawText:    locale.translate('permission_type')!,
                    iconImagePath: "assets/icons/vacation_icon.png"),
                CustomDropDownList(hintText:locale.translate('permission_type')!),
                 CustomOrdersRawIcon(
                    rawText: locale.translate('Period')!,
                    iconImagePath: "assets/icons/vacation_icon.png"),
                CustomDropDownList(
                  hintText: locale.translate('Period')!,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     CustomOrdersRawIcon(
                        rawText: locale.translate('start_permission')!,
                        iconImagePath: "assets/icons/time_icon.png"),
                     CustomOrdersRawIcon(
                        rawText: locale.translate('end_permission')!,
                        iconImagePath: "assets/icons/time_icon.png"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomTimePicker(
                      timePickerText: locale.translate('to')!,
                    ),
                    CustomTimePicker(
                      timePickerText:  locale.translate('from')!,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    CustomOrdersRawIcon(
                        rawText: locale.translate('Period')!,
                        iconImagePath: "assets/icons/time_icon.png"),
                    CustomOrdersRawIcon(
                        rawText: locale.translate('remaining_time')!,
                        iconImagePath: "assets/icons/time_icon.png"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomTimePicker(
                      timePickerText: locale.translate('Period')!,
                    ),
                    CustomTimePicker(
                      timePickerText: locale.translate('remaining_time')!,
                    )
                  ],
                ),

                 CustomOrdersRawIcon(
                  rawText: locale.translate('the_number_of_permissions_left')!,
                  iconImagePath: "assets/icons/hashtag_icon.png",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * .87,
                  child:  Card(
                    elevation: 6,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: locale.translate('the_number_of_permissions_left')!,
                          hintStyle: TextStyle(),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),

                 CustomOrdersRawIcon(
                  rawText: locale.translate('the_reason')!,
                  iconImagePath: "assets/icons/notes_icon.png",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * .87,
                  child:  Card(
                    elevation: 6,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText:locale.translate('the_reason')!,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Gaps.vGap15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                        screenWidth: MediaQuery.of(context).size.width * .3,
                        buttonTapHandler: () {},
                        buttonText:locale.translate('accept')!),
                    CustomButton(
                        buttonBackGroundColor: Colors.white,
                        screenWidth: MediaQuery.of(context).size.width * .3,
                        buttonTapHandler: () {},
                        buttonText: locale.translate('reject')!)
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
}
