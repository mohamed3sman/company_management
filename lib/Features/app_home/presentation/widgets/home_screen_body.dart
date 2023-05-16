import 'package:fingerPrint/Features/app_home/presentation/widgets/custom_grid_container.dart';
import 'package:fingerPrint/Features/app_home/presentation/widgets/details_snack_bar.dart';
import 'package:fingerPrint/Features/app_home/presentation/widgets/stack_day_text.dart';
import 'package:fingerPrint/Features/app_home/presentation/widgets/stack_fingerprint_logo.dart';
import 'package:fingerPrint/Features/app_home/presentation/widgets/stack_purble_container.dart';
import 'package:fingerPrint/Features/app_home/presentation/widgets/stack_time_text.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../core/locale/app_localizations.dart';

// ignore: must_be_immutable
class HomeScreenBody extends StatefulWidget {
  HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  late AppLocalizations locale;

  @override
  Widget build(BuildContext context) {
    locale = AppLocalizations.of(context)!;

    SizeConfig().init(context);

    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                color: const Color(0xffeaeaf7),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.h),
                      child: Stack(
                        children: [
                          const Center(child: StackPurbleContainer()),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 35.h),
                              child: Column(
                                children: [
                                  const StackFingerPrintLogo(),
                                  StackDayText(),
                                  StackTimeText()
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: const Color(0xffd3d1ef),
                child: Padding(
                  padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CustomGridContainer(
                              imagePath: 'assets/images/permission.png',
                              orderText: locale.translate("order_permission")!,
                            ),
                          ),
                          Expanded(
                            child: CustomGridContainer(
                              imagePath: 'assets/images/depression.png',
                              orderText: locale.translate("order_cache")!,
                            ),
                          ),
                          Expanded(
                            child: CustomGridContainer(
                              imagePath: 'assets/images/holiday.png',
                              orderText: locale.translate("order_vacation")!,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomGridContainer(
                              imagePath:
                                  'assets/images/confirmed_attendance_bro.png',
                              orderText:
                                  locale.translate("attendance_and_leaving")!,
                            ),
                          ),
                          Expanded(
                            child: CustomGridContainer(
                              imagePath: 'assets/images/credit_card.png',
                              orderText: locale.translate("salaries")!,
                            ),
                          ),
                          Expanded(
                            child: CustomGridContainer(
                              imagePath: 'assets/images/bank_account.png',
                              orderText: locale.translate("bank_account")!,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        DetailsSnackBar(),
        Padding(
          padding:
              EdgeInsets.only(left: SizeConfig.screenWidth! * 0.19, top: 10.h),
          child: Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: ToggleSwitch(
              minWidth: 90.0,
              cornerRadius: 20.0,
              activeBgColors: [
                [Colors.deepPurple],
                [Colors.deepPurple]
              ],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.white,
              inactiveFgColor: Colors.deepPurple,
              initialLabelIndex: 1,
              totalSwitches: 2,
              labels: ['إنصراف', 'حضور'],
              radiusStyle: true,
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
          ),
        ),
      ],
    );
  }
}
