import 'package:fingerPrint/Features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGridContainer extends StatelessWidget {
  const CustomGridContainer(
      {super.key,
      required this.imagePath,
      required this.orderText,
      required this.onTap});

  final String imagePath;
  final String orderText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 4.h),
          decoration: BoxDecoration(
            color: const Color(0xffeaeaf7),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.0,
                offset: Offset(0.2, 0.2),
              )
            ],
          ),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                height: SizeConfig.screenHeight! * 0.08,
                width: 65,
              ),
              const SizedBox(
                height: 5,
              ),
              FittedBox(
                fit: BoxFit.fill,
                child: Text(orderText,
                    style: TextStyle(
                      color: const Color(0xff403f3f),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
