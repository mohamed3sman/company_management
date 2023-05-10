import 'package:flutter/material.dart';

import '../../data/my_orders_grid_dummy_data.dart';
import 'my_orders_grid_view_item.dart';

class MyOrdersGridView extends StatelessWidget {
  MyOrdersGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.all(30),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30),
        itemCount: 6,
        itemBuilder: (context, index) {
          return MyOrdersGridViewItem(
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
