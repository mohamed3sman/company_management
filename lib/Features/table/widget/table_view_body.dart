import 'package:fingerPrint/Features/table/widget/attendance_and_leaving_table.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableViewBody extends StatefulWidget {
  const TableViewBody({super.key});

  @override
  State<TableViewBody> createState() => _TableViewBodyState();
}

class _TableViewBodyState extends State<TableViewBody> {
  final List<String> months = const [
    'يناير',
    'فبراير',
    'مارس',
    'ابريل',
    'مايو',
    'يونيو',
    'يوليو',
    'اغسطس',
    'سبتمبر',
    'اكتوبر',
    'نوفمبر',
    'ديسمبر',
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap20,
        SizedBox(
          height: 40,
          child: ListView.builder(
              padding: EdgeInsets.all(5),
              physics: BouncingScrollPhysics(),
              itemCount: months.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      current = index;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 9),
                    width: MediaQuery.of(context).size.width / 7,
                    height: 40,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: Offset(-1, 2))
                      ],
                           borderRadius: current == index
                          ? BorderRadius.circular(20)
                          : BorderRadius.circular(20),
                      color: current == index ? kPrimaryColor : Colors.white,
                    ),
                    child: Text(
                      months[index],
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: current == index
                              ? Colors.white
                              : const Color(0xff989898)),
                    ),
                  ),
                );
              }),
        ),Gaps.vGap20,
        AttendanceAndLeavingTable(),
      ],
    );
  }
}