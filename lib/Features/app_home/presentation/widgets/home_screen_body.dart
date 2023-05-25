import 'package:fingerPrint/Features/app_home/presentation/widgets/custom_grid_container.dart';
import 'package:fingerPrint/Features/app_home/presentation/widgets/details_snack_bar.dart';
import 'package:fingerPrint/Features/app_home/presentation/widgets/home_app_toggle_button.dart';
import 'package:fingerPrint/Features/app_home/presentation/widgets/stack_day_text.dart';
import 'package:fingerPrint/Features/app_home/presentation/widgets/stack_fingerprint_logo.dart';
import 'package:fingerPrint/Features/app_home/presentation/widgets/stack_purble_container.dart';
import 'package:fingerPrint/Features/app_home/presentation/widgets/stack_time_text.dart';
import 'package:fingerPrint/Features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/locale/app_localizations.dart';
import 'app_home_screen_app_bar.dart';

// ignore: must_be_immutable
class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  late AppLocalizations locale;

  @override
  Widget build(BuildContext context) {
    locale = AppLocalizations.of(context)!;

    SizeConfig().init(context);

    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                color: const Color(0xffeaeaf7),
                child: Column(
                  children: [
                    const HomeScreenAppBar(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.screenHeight! * 0.03,
                      ),
                      child: Stack(
                        children: [
                          const Center(child: StackPurbleContainer()),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.screenHeight! * 0.05,
                              ),
                              child: Column(
                                children: [
                                  const StackFingerPrintLogo(),
                                  StackDayText(),
                                  StackTimeText()
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                color: kPrimaryColor.withOpacity(.2),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight! * 0.07,
                      left: 15,
                      right: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CustomGridContainer(
                              onTap: () {
                                BlocProvider.of<BottomNavCubit>(context)
                                    .navigationQueue
                                    .addLast(
                                        BlocProvider.of<BottomNavCubit>(context)
                                            .bottomNavIndex);
                                BlocProvider.of<BottomNavCubit>(context)
                                    .updateBottomNavIndex(7);
                              },
                              imagePath: 'assets/images/permission.png',
                              orderText: locale.translate("order_permission")!,
                            ),
                          ),
                          Expanded(
                            child: CustomGridContainer(
                              onTap: () {
                                BlocProvider.of<BottomNavCubit>(context)
                                    .navigationQueue
                                    .addLast(
                                        BlocProvider.of<BottomNavCubit>(context)
                                            .bottomNavIndex);
                                BlocProvider.of<BottomNavCubit>(context)
                                    .updateBottomNavIndex(6);
                              },
                              imagePath: 'assets/images/depression.png',
                              orderText: locale.translate("order_cache")!,
                            ),
                          ),
                          Expanded(
                            child: CustomGridContainer(
                              onTap: () {
                                BlocProvider.of<BottomNavCubit>(context)
                                    .navigationQueue
                                    .addLast(
                                        BlocProvider.of<BottomNavCubit>(context)
                                            .bottomNavIndex);
                                BlocProvider.of<BottomNavCubit>(context)
                                    .updateBottomNavIndex(5);
                              },
                              imagePath: 'assets/images/holiday.png',
                              orderText: locale.translate("order_vacation")!,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomGridContainer(
                              onTap: () {
                                BlocProvider.of<BottomNavCubit>(context)
                                    .navigationQueue
                                    .addLast(
                                        BlocProvider.of<BottomNavCubit>(context)
                                            .bottomNavIndex);
                                BlocProvider.of<BottomNavCubit>(context)
                                    .updateBottomNavIndex(13);
                              },
                              imagePath:
                                  'assets/images/confirmed_attendance_bro.png',
                              orderText:
                                  locale.translate("attendance_and_leaving")!,
                            ),
                          ),
                          Expanded(
                            child: CustomGridContainer(
                              onTap: () {},
                              imagePath: 'assets/images/credit_card.png',
                              orderText: locale.translate("salaries")!,
                            ),
                          ),
                          Expanded(
                            child: CustomGridContainer(
                              onTap: () {},
                              imagePath: 'assets/images/intro3.png',
                              orderText: locale.translate("bank_account")!,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        DetailsSnackBar(),
        Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.screenWidth! * 0.29,
              top: 70.h,
              right: SizeConfig.screenWidth! * 0.29),
          child: const HomeAppToggleButton(),
        ),
      ],
    );
  }
}
