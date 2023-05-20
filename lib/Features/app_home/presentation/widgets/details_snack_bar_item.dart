import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    SizeConfig().init(context);
    return Expanded(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth! * 0.010),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.deepPurple,
              size: 23.sp,
            ),
            FittedBox(
              fit: BoxFit.fill,
              child: Text(timeText,
                  style: TextStyle(
                    //fontFamily: 'HacenTunisia',
                    color: const Color(0xff636262),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w900,
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
      ),
    );
  }
}
