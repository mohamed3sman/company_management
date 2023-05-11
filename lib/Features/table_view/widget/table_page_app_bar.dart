import 'package:flutter/material.dart';

class TablePageAppBar extends StatelessWidget {
  const TablePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "الحضور والانصراف",
      style: TextStyle(
        fontFamily: 'HacenTunisia',
        color: Color(0xff282828),
        fontSize: 18,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
