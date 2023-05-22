import 'package:fingerPrint/core/utils/hex_color.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 35,
          ),
          Column(
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
                    fontStyle: FontStyle.normal,
                    fontSize: 12.sp),
              ),
            ],
          ),
          Image.asset(
            'assets/icons/notification_icon.png',
            color: Colors.grey[700],
          ),
        ],
      ),
    );
  }
}
