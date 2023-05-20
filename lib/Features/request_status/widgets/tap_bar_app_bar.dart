import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/mediaquery_sizes.dart';

class RequestStatusAppBar extends StatelessWidget {
  const RequestStatusAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  'https://sportsmatik.com/uploads/world-events/players/lionel-messi_1564492648.jpg',
                  width: 45.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'أهلا وسهلا',
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.7),
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      'أحمد محمد عبدالرحمن',
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth! * 0.040),
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
