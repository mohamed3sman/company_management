import 'package:fingerPrint/Features/attendance_view/widgets/attendance_view_body_app_bar.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/custom_grid_container.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/details_snack_bar.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_day_text.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_fingerprint_logo.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_purble_container.dart';
import 'package:fingerPrint/Features/attendance_view/widgets/stack_time_text.dart';
import 'package:fingerPrint/Features/my_orders/presentation/widgets/my_orders_grid_view_item.dart';
import 'package:flutter/material.dart';

class AttendanceViewBody extends StatelessWidget {
  const AttendanceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                color: const Color(0xffeaeaf7),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        const Center(
                          child: StackPurbleContainer(),
                        ),
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
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xffd3d1ef),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 8, right: 8),
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
                            orderText: 'طلب اجازة',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
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
