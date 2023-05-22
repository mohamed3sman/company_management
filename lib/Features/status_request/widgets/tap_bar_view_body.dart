import 'package:fingerPrint/Features/status_request/widgets/accepted_tap.dart';
import 'package:fingerPrint/Features/status_request/widgets/current_tap.dart';
import 'package:fingerPrint/Features/status_request/widgets/rejected_tap.dart';
import 'package:fingerPrint/Features/status_request/widgets/tap_bar_app_bar.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TapBarViewBody extends StatefulWidget {
  const TapBarViewBody({super.key});

  @override
  State<TapBarViewBody> createState() => _TapBarViewBodyState();
}

List<String> taps = const [
  'جارية',
  'تم القبول',
  'تم الرفض',
];

List<Widget> body = const [
  CurrentTap(),
  AcceptedTap(),
  RejectedTap(),
];
int current = 0;

class _TapBarViewBodyState extends State<TapBarViewBody> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              const RequestStatusAppBar(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.83,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ListView.builder(
                                padding: EdgeInsets.zero,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: taps.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (ctx, index) {
                                  return Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            current = index;
                                          });
                                        },
                                        child: AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 7),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3.53,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  blurRadius: 3.0,
                                                  offset: const Offset(-1, 0))
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: current == index
                                                ? kPrimaryColor
                                                : Colors.white,
                                          ),
                                          child: Center(
                                            child: Text(
                                              taps[index],
                                              style: TextStyle(
                                                  fontSize: 11.sp,
                                                  color: current == index
                                                      ? Colors.white
                                                      : kPrimaryColor),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Visibility(
                                          visible: current == index,
                                          child: Container(
                                            width: 5,
                                            height: 5,
                                            decoration: const BoxDecoration(
                                                color: kPrimaryColor,
                                                shape: BoxShape.circle),
                                          ))
                                    ],
                                  );
                                }),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  body[current],
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: MaterialButton(
                        onPressed: () {},
                        color: kPrimaryColor,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(20),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 27,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
