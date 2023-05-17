import 'package:fingerPrint/Features/app_home/presentation/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffeaeaf7),
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          actions: [Image.asset('assets/icons/notification_icon.png')],
          title: Padding(
            padding: EdgeInsets.only(top: 3.h),
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
        ),
        body: HomeScreenBody(),
      ),
    );
  }
}
