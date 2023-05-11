import 'package:fingerPrint/Features/attendance_view/widgets/details_snack_bar_item.dart';
import 'package:flutter/material.dart';

class DetailsSnackBar extends StatelessWidget {
  const DetailsSnackBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 290,
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 0)
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: const [
              DetailsSnackBarItem(
                icon: Icons.access_time_outlined,
                timeText: '8 ساعات',
                actionText: 'عدد ساعات العمل',
              ),
              DetailsSnackBarItem(
                icon: Icons.keyboard_double_arrow_left_rounded,
                timeText: '05:00 PM',
                actionText: 'تسجيل الانصراف',
              ),
              DetailsSnackBarItem(
                icon: Icons.exit_to_app_rounded,
                timeText: 'تسجيل الحضور',
                actionText: 'تسجيل الحضور',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
