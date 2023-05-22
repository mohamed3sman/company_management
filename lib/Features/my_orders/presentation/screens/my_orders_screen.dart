import 'package:fingerPrint/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/my_orders_grid_view.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: MediaQuery.of(context).size * .1,
        child: const CustomAppBar(),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: const [
            Text("طلباتي",
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
