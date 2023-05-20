import 'package:fingerPrint/Features/following_request/widgets/following_request_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FollowingRequestScreen extends StatelessWidget {
  const FollowingRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.black,
              size: 25.sp,
            ),
          ),
        ],
        title: Text(
          'تتبع طلبك',
          style: TextStyle(
              color: Colors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body: FollowingRequestBody(),
    );
  }
}
