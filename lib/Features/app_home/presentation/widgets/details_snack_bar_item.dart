import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsSnackBarItem extends StatelessWidget {
  const DetailsSnackBarItem({
    super.key,
    required this.icon,
    required this.timeText,
    required this.actionText,
  });
  final IconData icon;
  final String timeText;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.deepPurple,
            size: 22,
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Text(timeText,
                style: TextStyle(
                  //fontFamily: 'HacenTunisia',
                  color: const Color(0xff636262),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Text(actionText,
                style: TextStyle(
                  //  fontFamily: 'HacenTunisia',
                  color: Colors.grey,
                  fontSize: 7.sp,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                )),
          )
        ],
      ),
    );
  }
}
