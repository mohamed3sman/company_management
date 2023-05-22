import 'package:fingerPrint/Features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:fingerPrint/Features/procedures/procedures/widgets/custom_row.dart';
import 'package:fingerPrint/Features/procedures/procedures/widgets/divider_custom.dart';
import 'package:fingerPrint/Features/procedures/procedures/widgets/showing_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonSheet extends StatefulWidget {
  const ButtonSheet({Key? key}) : super(key: key);

  @override
  State<ButtonSheet> createState() => _ButtonSheetState();
}

class _ButtonSheetState extends State<ButtonSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.cable_rounded),
            color: const Color(0xff7350cb),
            onPressed: () {
              BlocProvider.of<BottomNavCubit>(context).navigationQueue.addLast(
                  BlocProvider.of<BottomNavCubit>(context).bottomNavIndex);
              BlocProvider.of<BottomNavCubit>(context).updateBottomNavIndex(15);
            },
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                context: context,
                builder: (context) {
                  return const ShowModalBottomSheet();
                },
              );
            },
            color: const Color(0xff7350cb),
            icon: const Icon(Icons.touch_app),
          ),
          // Image.asset("assets/images/action-chains-outlined@2x.png"),
          // Image.asset("assets/images/action-chains-outlined@2x.png"),
        ],
        leading: IconButton(
            icon: const FaIcon(FontAwesomeIcons.arrowLeft),
            color: Colors.black,
            onPressed: () {}),
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "تفاصيل الطلب",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CustomRow(
                imgscr: "assets/images/hashtag-solid@2x.png",
                mainText: "رقم الطلب",
                secandryText: "#123546"),
            CustomDivider(),
            CustomRow(
                imgscr: "assets/images/icons8-holiday-50@2x.png",
                mainText: "تاريخ الطلب",
                secandryText: "5-7-2023"),
            CustomDivider(),
            CustomRow(
                imgscr: "assets/images/icons8-holiday-50@2x.png",
                mainText: "نوع الإجازة",
                secandryText: "إجازة مرضية"),
            CustomDivider(),
            CustomRow(
                imgscr: "assets/images/hashtag-solid.svg",
                mainText: "رعدد الأيام",
                secandryText: "15 يوم"),
            CustomDivider(),
            CustomRow(
                imgscr: "assets/images/icons8-holiday-50@2x.png",
                mainText: "من تاريخ",
                secandryText: "5-23-2023"),
            CustomDivider(),
            CustomRow(
                imgscr: "assets/images/icons8-holiday-50@2x.png",
                mainText: "إلى تاريخ",
                secandryText: "5-23-2023"),
            CustomDivider(),
            CustomRow(
                imgscr: "assets/images/status-acknowledge.svg",
                mainText: " الحالة",
                secandryText: "جاري العمل على الطلب"),
            CustomDivider(),
          ],
        ),
      ),
    );
  }
}
