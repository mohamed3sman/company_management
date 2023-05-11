import 'package:fingerPrint/Features/vacation_view/widgets/order_list_tile.dart';
import 'package:flutter/material.dart';

class CurrentTap extends StatelessWidget {
  const CurrentTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        OrderListTile(
          dotColor: Colors.amber,
          status: 'جاري العمل',
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: 'جاري العمل',
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: 'جاري العمل',
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: 'جاري العمل',
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: 'جاري العمل',
        ),
      ],
    );
  }
}
