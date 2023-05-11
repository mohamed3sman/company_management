import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../data/my_orders_grid_dummy_data.dart';
import 'my_orders_grid_view_item.dart';

class MyOrdersGridView extends StatelessWidget {
  MyOrdersGridView({super.key});
  List MyOrdersScreens = [
    kPermissionRquestScreen,
    kVacationRquestScreen,
    kPermissionRquestScreen,
    kPermissionRquestScreen,
    kPermissionRquestScreen,
    kPermissionRquestScreen
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .7,
      child: GridView.builder(
        padding: const EdgeInsets.all(30),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: (MediaQuery.of(context).size.height * .3),
            childAspectRatio: 1,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30),
        itemCount: 6,
        itemBuilder: (context, index) {
          return MyOrdersGridViewItem(
            navScreenIndex: index,
            gridImagePath: MyOrdersGridDummtData().DUMMYGRIDDATA[index]
                ["imagePath"],
            gridItemTapHandler: () {},
            gridText: MyOrdersGridDummtData().DUMMYGRIDDATA[index]["gridText"],
          );
        },
      ),
    );
  }
}
