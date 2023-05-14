import 'package:fingerPrint/Features/table_view/widget/attendance_and_leaving_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableViewBody extends StatefulWidget {
  const TableViewBody({super.key});

  @override
  State<TableViewBody> createState() => _TableViewBodyState();
}

class _TableViewBodyState extends State<TableViewBody> {
  final List<String> months = const [
    'ديسمبر',
    'نوفمبر',
    'اكتوبر',
    'سبتمبر',
    'اغسطس',
    'يوليو',
    'يونيو',
    'مايو',
    'ابريل',
    'مارس',
    'فبراير',
    'يناير'
  ];
  List<Widget> body = const [
    AttendanceAndLeavingTable(),
    AttendanceAndLeavingTable(),
    AttendanceAndLeavingTable(),
    AttendanceAndLeavingTable(),
    AttendanceAndLeavingTable(),
    AttendanceAndLeavingTable(),
    AttendanceAndLeavingTable(),
    AttendanceAndLeavingTable(),
    AttendanceAndLeavingTable(),
    AttendanceAndLeavingTable(),
    AttendanceAndLeavingTable(),
    AttendanceAndLeavingTable(),
  ];
  int current = 11;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  itemCount: months.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            width: MediaQuery.of(context).size.width / 3.48,
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
                              color: current == index
                                  ? const Color(0xff7350cb)
                                  : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                months[index],
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: current == index
                                        ? Colors.white
                                        : const Color(0xff989898)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    body[current],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
