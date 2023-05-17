import 'package:fingerPrint/Features/following_request/widgets/following_request_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/mediaquery_sizes.dart';

class FollowingRequestBody extends StatelessWidget {
  FollowingRequestBody({super.key});
  final List<int> steps = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          SizedBox(
            width: SizeConfig.screenWidth! * 0.80,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const FollowingRequestCustomWidget();
                }),
          ),
        ],
      ),
    );
  }
}
