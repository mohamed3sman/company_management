import 'package:fingerPrint/Features/vacation_view/widgets/order_list_tile.dart';
import 'package:flutter/material.dart';

class RejectedTap extends StatelessWidget {
  const RejectedTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        OrderListTile(
          dotColor: Colors.red,
          status: 'مرفوض',
        ),
        OrderListTile(
          dotColor: Colors.red,
          status: 'مرفوض',
        ),
        OrderListTile(
          dotColor: Colors.red,
          status: 'مرفوض',
        ),
        OrderListTile(
          dotColor: Colors.red,
          status: 'مرفوض',
        ),
        OrderListTile(
          dotColor: Colors.red,
          status: 'مرفوض',
        ),
      ],
    );
  }
}
