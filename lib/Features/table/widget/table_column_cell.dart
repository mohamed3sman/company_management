import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableColumnCell extends StatelessWidget {
  const TableColumnCell({super.key, required this.columnText});
  final String columnText;
  @override
  Widget build(BuildContext context) {
    return TableCell(

     // verticalAlignment:TableCellVerticalAlignment.baseline ,
        child: Container(
          width: 50,
          height: 50,
      padding: const EdgeInsets.only(top: 10),
      child: Text(columnText,
          textAlign: TextAlign.center,
          style: TextStyle(
           
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.normal,
          )),
    ));
  }
}
