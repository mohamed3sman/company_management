import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';

import '../widgets/my_orders_grid_view.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Gaps.vGap15,
            const Text("طلباتي",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
            MyOrdersGridView(),
          ],
        ),
      ),
    );
  }
}
