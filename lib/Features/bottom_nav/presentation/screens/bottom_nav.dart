import 'dart:async';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:fingerPrint/Features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/hex_color.dart';
import 'package:fingerPrint/core/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav>
    with SingleTickerProviderStateMixin {
  // final _autoSizeGroup = AutoSizeGroup();
  late AnimationController _animationController;
  late Animation<double> _animation;
  late CurvedAnimation _curve;
  final _iconPathList = <String>[
    'assets/images/group_1037.png',
    'assets/images/mail_icon.png',
    'assets/images/icon_feather_info.png',
    'assets/images/icon_awesome_clipboard_list.png',
  ];
  final iconToolTipMessege = <String>[
    'المزيد',
    'رسائل',
    'استعلامات',
    'طلباتي',
  ];
  @override
  void initState() {
    final systemTheme = SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: HexColor('#373A36'),
      systemNavigationBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemTheme);
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _curve = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_curve);
    Timer(
        const Duration(
          milliseconds: 1000,
        ), () {
      if (mounted) {
        _animationController.forward();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageContainer(child:
        BlocBuilder<BottomNavCubit, BottomNavState>(builder: (context, state) {
      return OrientationBuilder(builder: (context, orientation) {
        return WillPopScope(
          onWillPop: () async {
            if (BlocProvider.of<BottomNavCubit>(context)
                .navigationQueue
                .isEmpty) return true;
            BlocProvider.of<BottomNavCubit>(context).updateBottomNavIndex(
                BlocProvider.of<BottomNavCubit>(context).navigationQueue.last);
            BlocProvider.of<BottomNavCubit>(context)
                .navigationQueue
                .removeLast();
            return false;
          },
          child: Scaffold(
            extendBody: true,
            body: context.watch<BottomNavCubit>().selectedBottomNavScreen,
            floatingActionButton: ScaleTransition(
              scale: _animation,
              child: !BlocProvider.of<BottomNavCubit>(context).drawerIsOpen
                  ? FloatingActionButton(
                      elevation: 10,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('assets/images/home.png',
                            color: context
                                        .watch<BottomNavCubit>()
                                        .bottomNavIndex ==
                                    4
                                ? kPrimaryColor
                                : Colors.black),
                      ),
                      onPressed: () {
                        _animationController.reset();
                        _animationController.forward();
                        BlocProvider.of<BottomNavCubit>(context)
                            .updateBottomNavIndex(4);
                      },
                    )
                  : const SizedBox(),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: !BlocProvider.of<BottomNavCubit>(context)
                    .drawerIsOpen
                ? Directionality(
                    textDirection: TextDirection.ltr,
                    child: AnimatedBottomNavigationBar.builder(
                        itemCount: _iconPathList.length,
                        tabBuilder: (int index, bool isActive) {
                          final color = isActive ? kPrimaryColor : Colors.black;
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Tooltip(
                                message: iconToolTipMessege[index],
                                child: Image.asset(
                                  _iconPathList[index],
                                  height: orientation == Orientation.portrait
                                      ? 24
                                      : 35,
                                  width: orientation == Orientation.portrait
                                      ? 24
                                      : 35,
                                  color: color,
                                ),
                              ),
                              SizedBox(
                                  height: orientation == Orientation.portrait
                                      ? 4
                                      : 12),
                              // Padding(
                              //   padding: EdgeInsets.symmetric(horizontal: 8),
                              //   child: AutoSizeText(
                              //     index == 0
                              //         ? 'Menu'
                              //         : index == 1
                              //             ? 'Chat'
                              //             : index == 2
                              //                 ? 'To Do'
                              //                 : ' Person',
                              //     maxLines: 1,
                              //     style: TextStyle(
                              //         color: color,
                              //         fontSize: orientation == Orientation.portrait
                              //             ? 12
                              //             : 25),
                              //     group: _autoSizeGroup,
                              //   ),
                              // )
                            ],
                          );
                        },
                        backgroundColor: Colors.white,
                        activeIndex:
                            context.watch<BottomNavCubit>().bottomNavIndex,
                        splashColor: kPrimaryColor,
                        notchAndCornersAnimation: _animation,
                        splashSpeedInMilliseconds: 300,
                        notchSmoothness: NotchSmoothness.sharpEdge,
                        gapLocation: GapLocation.center,

                        // leftCornerRadius: 32,
                        // rightCornerRadius: 32,
                        onTap: (index) {
                          BlocProvider.of<BottomNavCubit>(context)
                              .navigationQueue
                              .addLast(BlocProvider.of<BottomNavCubit>(context)
                                  .bottomNavIndex);
                          BlocProvider.of<BottomNavCubit>(context)
                              .updateBottomNavIndex(index);
                        }),
                  )
                : const SizedBox(),
          ),
        );
      });
    }));
  }
}
