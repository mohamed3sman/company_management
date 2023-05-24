import 'package:fingerPrint/Features/table/widget/custom_table_attendance_column.dart';
import 'package:fingerPrint/Features/table/widget/custom_table_date_column_item.dart';
import 'package:fingerPrint/Features/table/widget/custom_table_leaving_column.dart';
import 'package:fingerPrint/Features/table/widget/custom_table_work_hour_column.dart';
import 'package:fingerPrint/Features/table/widget/table_column_cell.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AttendanceAndLeavingTable extends StatelessWidget {
  const AttendanceAndLeavingTable({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return Table(
      border: TableBorder.all(
          width: 2,
          color: const Color(0xfff1f1f1),
          borderRadius: BorderRadius.circular(16)),
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
      },
      children:  [
        TableRow(
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(.3),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16))),
          children: [
            
            TableColumnCell(
              columnText: 'التاريخ',
            ),
           
            TableColumnCell(
              columnText: 'الحضور',
            ),
            TableColumnCell(
              columnText: 'الانصراف',
            ),
            TableColumnCell(
              columnText: 'ساعات العمل',
            ),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12))),
          children: [
            
            CustomTableDateColumnItem(
              dayNumber: '1',
              dayName: 'الأحد',
            ),
            CustomTableAttendanceColumn(
              timeText: '09.00',
            ),
            CustomTableLeavingColumn(
              timeText: '05:00',
            ),
            CustomTableWorkHourColumn(),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12))),
          children: [
            CustomTableDateColumnItem(
              dayNumber: '1',
              dayName: 'الأحد',
            ),
            CustomTableAttendanceColumn(
              timeText: '09.00',
            ),
            CustomTableLeavingColumn(
              timeText: '05:00',
            ),
            CustomTableWorkHourColumn(),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12))),
          children: [
            CustomTableDateColumnItem(
              dayNumber: '1',
              dayName: 'الأحد',
            ),
            CustomTableAttendanceColumn(
              timeText: '09.00',
            ),
            CustomTableLeavingColumn(
              timeText: '05:00',
            ),
            CustomTableWorkHourColumn(),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12))),
          children: [
            CustomTableDateColumnItem(
              dayNumber: '1',
              dayName: 'الأحد',
            ),
            CustomTableAttendanceColumn(
              timeText: '09.00',
            ),
            CustomTableLeavingColumn(
              timeText: '05:00',
            ),
            CustomTableWorkHourColumn(),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12))),
          children: [
            CustomTableDateColumnItem(
              dayNumber: '1',
              dayName: 'الأحد',
            ),
            CustomTableAttendanceColumn(
              timeText: '09.00',
            ),
            CustomTableLeavingColumn(
              timeText: '05:00',
            ),
            CustomTableWorkHourColumn(),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12))),
          children: [
            CustomTableDateColumnItem(
              dayNumber: '1',
              dayName: 'الأحد',
            ),
            CustomTableAttendanceColumn(
              timeText: '09.00',
            ),
            CustomTableLeavingColumn(
              timeText: '05:00',
            ),
            CustomTableWorkHourColumn(),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12))),
          children: [
            CustomTableDateColumnItem(
              dayNumber: '1',
              dayName: 'الأحد',
            ),
            CustomTableAttendanceColumn(
              timeText: '09.00',
            ),
            CustomTableLeavingColumn(
              timeText: '05:00',
            ),
            CustomTableWorkHourColumn(),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12))),
          children: [
            CustomTableDateColumnItem(
              dayNumber: '1',
              dayName: 'الأحد',
            ),
            CustomTableAttendanceColumn(
              timeText: '09.00',
            ),
            CustomTableLeavingColumn(
              timeText: '05:00',
            ),
            CustomTableWorkHourColumn(),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12))),
          children: [
            CustomTableDateColumnItem(
              dayNumber: '1',
              dayName: 'الأحد',
            ),
            CustomTableAttendanceColumn(
              timeText: '09.00',
            ),
            CustomTableLeavingColumn(
              timeText: '05:00',
            ),
            CustomTableWorkHourColumn(),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12))),
          children: [
            CustomTableDateColumnItem(
              dayNumber: '1',
              dayName: 'الأحد',
            ),
            CustomTableAttendanceColumn(
              timeText: '09.00',
            ),
            CustomTableLeavingColumn(
              timeText: '05:00',
            ),
            CustomTableWorkHourColumn(),
          ],
        ),
     
      ],
    );
  }
}
