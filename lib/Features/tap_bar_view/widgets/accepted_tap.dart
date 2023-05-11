import 'package:fingerPrint/Features/tap_bar_view/widgets/order_list_tile.dart';
import 'package:flutter/material.dart';

class AcceptedTap extends StatelessWidget {
  const AcceptedTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        OrderListTile(
          dotColor: Colors.green,
          status: 'تم قبول الطلب',
        ),
        OrderListTile(
          dotColor: Colors.green,
          status: 'تم قبول الطلب',
        ),
        OrderListTile(
          dotColor: Colors.green,
          status: 'تم قبول الطلب',
        ),
        OrderListTile(
          dotColor: Colors.green,
          status: 'تم قبول الطلب',
        ),
        OrderListTile(
          dotColor: Colors.green,
          status: 'تم قبول الطلب',
        ),
      ],
    );
  }
}
