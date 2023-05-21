import 'package:fingerPrint/Features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:fingerPrint/core/utils/commons.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/my_orders_grid_dummy_data.dart';
import 'my_orders_grid_view_item.dart';

// ignore: must_be_immutable
class MyOrdersGridView extends StatelessWidget {
  MyOrdersGridView({super.key});
  // List MyOrdersScreens = [
  //   kPermissionRquestScreen,
  //   kPermissionRquestScreen,
  //   kPermissionRquestScreen,
  //   kPermissionRquestScreen,
  //   kPermissionRquestScreen,
  //   kPermissionRquestScreen
  // ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyOrdersGridViewItem(
              navScreenIndex: 0,
              gridImagePath: MyOrdersGridDummtData().DUMMYGRIDDATA[0]
                  ["imagePath"],
              gridItemTapHandler: () {
                BlocProvider.of<BottomNavCubit>(context)
                    .navigationQueue
                    .addLast(BlocProvider.of<BottomNavCubit>(context)
                        .bottomNavIndex);
                BlocProvider.of<BottomNavCubit>(context)
                    .updateBottomNavIndex(8);
              },
              gridText: MyOrdersGridDummtData().DUMMYGRIDDATA[0]["gridText"],
            ),
            MyOrdersGridViewItem(
              navScreenIndex: 1,
              gridImagePath: MyOrdersGridDummtData().DUMMYGRIDDATA[1]
                  ["imagePath"],
              gridItemTapHandler: () {
                BlocProvider.of<BottomNavCubit>(context)
                    .navigationQueue
                    .addLast(BlocProvider.of<BottomNavCubit>(context)
                        .bottomNavIndex);
                BlocProvider.of<BottomNavCubit>(context)
                    .updateBottomNavIndex(8);
              },
              gridText: MyOrdersGridDummtData().DUMMYGRIDDATA[1]["gridText"],
            )
          ],
        ),
        Gaps.vGap20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyOrdersGridViewItem(
              navScreenIndex: 2,
              gridImagePath: MyOrdersGridDummtData().DUMMYGRIDDATA[2]
                  ["imagePath"],
              gridItemTapHandler: () {
                BlocProvider.of<BottomNavCubit>(context)
                    .navigationQueue
                    .addLast(BlocProvider.of<BottomNavCubit>(context)
                        .bottomNavIndex);
                BlocProvider.of<BottomNavCubit>(context)
                    .updateBottomNavIndex(8);
              },
              gridText: MyOrdersGridDummtData().DUMMYGRIDDATA[2]["gridText"],
            ),
            MyOrdersGridViewItem(
              navScreenIndex: 3,
              gridImagePath: MyOrdersGridDummtData().DUMMYGRIDDATA[3]
                  ["imagePath"],
              gridItemTapHandler: () {
                Commons.showToast(context, message: "not Found screen");
              },
              gridText: MyOrdersGridDummtData().DUMMYGRIDDATA[3]["gridText"],
            )
          ],
        ),
        Gaps.vGap20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyOrdersGridViewItem(
              navScreenIndex: 4,
              gridImagePath: MyOrdersGridDummtData().DUMMYGRIDDATA[4]
                  ["imagePath"],
              gridItemTapHandler: () {
                BlocProvider.of<BottomNavCubit>(context)
                    .navigationQueue
                    .addLast(BlocProvider.of<BottomNavCubit>(context)
                        .bottomNavIndex);
                BlocProvider.of<BottomNavCubit>(context)
                    .updateBottomNavIndex(9);
              },
              gridText: MyOrdersGridDummtData().DUMMYGRIDDATA[4]["gridText"],
            ),
            MyOrdersGridViewItem(
              navScreenIndex: 5,
              gridImagePath: MyOrdersGridDummtData().DUMMYGRIDDATA[5]
                  ["imagePath"],
              gridItemTapHandler: () {
                BlocProvider.of<BottomNavCubit>(context)
                    .navigationQueue
                    .addLast(BlocProvider.of<BottomNavCubit>(context)
                        .bottomNavIndex);
                BlocProvider.of<BottomNavCubit>(context)
                    .updateBottomNavIndex(10);
              },
              gridText: MyOrdersGridDummtData().DUMMYGRIDDATA[5]["gridText"],
            )
          ],
        )
      ],
    );
  }
}
