import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableColumnCell extends StatelessWidget {
  const TableColumnCell({super.key, required this.columnText});
  final String columnText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 391,
      height: 44,
      child: TableCell(
          child: Container(
        padding: const EdgeInsets.only(top: 10),
        child: Text(columnText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'HacenTunisia',
              color: const Color(0xcc5647b2),
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            )),
      )),
    );
  }
}
