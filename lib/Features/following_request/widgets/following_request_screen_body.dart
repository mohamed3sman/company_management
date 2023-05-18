import 'package:fingerPrint/Features/following_request/widgets/following_request_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/mediaquery_sizes.dart';
import 'package:im_stepper/stepper.dart';

class FollowingRequestBody extends StatelessWidget {
  const FollowingRequestBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: IconStepper(
            direction: Axis.vertical,
            stepColor: Colors.transparent,
            activeStepColor: Colors.transparent,
            activeStepBorderColor: Colors.transparent,
            activeStepBorderPadding: 0,
            enableNextPreviousButtons: false,
            lineColor: const Color(0xff09b214),
            lineLength: 70,
            alignment: Alignment.topCenter,
            icons: [
              Icon(
                Icons.check_circle,
                color: const Color(0xff09b214),
                size: 20.sp,
              ),
              Icon(
                Icons.check_circle,
                color: const Color(0xff09b214),
                size: 20.sp,
              ),
              Icon(
                Icons.check_circle,
                color: const Color(0xff09b214),
                size: 20.sp,
              ),
              Icon(
                Icons.check_circle,
                color: const Color(0xff09b214),
                size: 20.sp,
              ),
              Icon(
                Icons.check_circle,
                color: const Color(0xff09b214),
                size: 20.sp,
              ),
            ],
          ),
        ),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.75,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) {
              return const FollowingRequestCustomWidget();
            },
          ),
        ),
      ],
    );
  }
}
