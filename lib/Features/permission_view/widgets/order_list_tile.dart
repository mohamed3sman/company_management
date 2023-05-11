import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

class OrderListTile extends StatelessWidget {
  const OrderListTile(
      {super.key, required this.status, required this.dotColor});

  final String status;
  final Color dotColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey, blurRadius: 3.0, offset: Offset(0.0, 0.8))
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'التفاصيل',
                  style: TextStyle(color: kPrimaryColor, fontSize: 12),
                ),
                Text(
                  'رقم الطلب : 123456',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Icon(
                        Icons.circle,
                        color: dotColor,
                        size: 10,
                      ),
                    ),
                    const Text(
                      ' :الحالة',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
                Text(
                  'نوع الاذن : اذن مرضية',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
