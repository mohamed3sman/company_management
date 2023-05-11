import 'package:flutter/material.dart';

class TablePageAppBarActions extends StatelessWidget {
  const TablePageAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      padding: const EdgeInsets.only(left: 12),
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          const Text("2023",
              style: TextStyle(
                fontFamily: 'HacenTunisia',
                color: Color(0xff5e5e5e),
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.date_range,
              color: Color(0xff7350cb),
            ),
          )
        ],
      ),
    );
  }
}
