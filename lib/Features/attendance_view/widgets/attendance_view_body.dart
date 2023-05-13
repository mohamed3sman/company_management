import 'package:fingerPrint/Features/attendance_view/widgets/custom_grid_container.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/details_snack_bar.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_day_text.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_fingerprint_logo.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_purble_container.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_time_text.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/locale/app_localizations.dart';

class AttendanceViewBody extends StatelessWidget {
  AttendanceViewBody({super.key});
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
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Stack(
                        children: [
                          const Center(child: StackPurbleContainer()),
                          Center(
                            child: Column(
                              children: const [
                                StackFingerPrintLogo(),
                                StackDayText(),
                                StackTimeText()
                              ],
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomGridContainer(
                            imagePath: 'assets/images/permission.png',
                            orderText: 'طلب اذن',
                          ),
                          CustomGridContainer(
                            imagePath: 'assets/images/depression.png',
                            orderText: 'طلب سلفة',
                          ),
                          CustomGridContainer(
                            imagePath: 'assets/images/holiday.png',
                            orderText: locale.translate("order_vacation")!,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CustomGridContainer(
                            imagePath:
                                'assets/images/confirmed_attendance_bro.png',
                            orderText: 'الحضور والانصراف',
                          ),
                          CustomGridContainer(
                            imagePath: 'assets/images/credit_card.png',
                            orderText: 'الرواتب',
                          ),
                          CustomGridContainer(
                            imagePath: 'assets/images/bank_account.png',
                            orderText: 'حساب بنكي',
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
        const DetailsSnackBar()
      ],
    );
  }
}
