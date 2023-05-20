import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffeaeaf7),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.screenWidth! * 0.12,
                right: SizeConfig.screenWidth! * 0.32),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Image.network(
                    "https://www.mei.edu/sites/default/files/styles/profile_image_size/public/photos/Sultan%20Al%20Qassemi_square.png?itok=F-VxEcCA",
                    height: 35.0,
                    width: 35.0,
                  ),
                ),
                Text(
                  "أحمد محمد عبدالرحمن",
                  style: TextStyle(
                      color: const Color(0xff1d1d1d),
                      fontWeight: FontWeight.w800,
                      fontFamily: "HacenTunisia",
                      fontStyle: FontStyle.normal,
                      fontSize: 15.sp),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: Image.asset('assets/icons/notification_icon.png'),
          ),
        ],
      ),
    );
  }
}
