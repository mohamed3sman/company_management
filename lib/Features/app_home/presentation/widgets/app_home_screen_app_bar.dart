import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/icons/notification_icon.png'),
        Expanded(
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
                    fontWeight: FontWeight.w400,
                    fontFamily: "HacenTunisia",
                    fontStyle: FontStyle.normal,
                    fontSize: 15.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
