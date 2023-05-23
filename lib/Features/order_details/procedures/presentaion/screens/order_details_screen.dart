import 'package:fingerPrint/Features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:fingerPrint/Features/order_details/procedures/presentaion/widgets/showing_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/custom_simple_app_bar.dart';
import '../widgets/custom_row.dart';
import '../widgets/divider_custom.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: screenSize * .07,
        child: CustomSimpleAppBar(
          appBarTitle: "تفاصيل الطلب",
          leadingWidget: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(children: [
              InkWell(
                child: Image.asset(
                  "assets/icons/touch_icon.png",
                  color: kPrimaryColor,
                ),
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.only(bottom: 
                        MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: const ShowModalBottomSheet());
                    },
                  );
                },
              ),
              const Spacer(),
              InkWell(
                child: Image.asset(
                  "assets/icons/follow_request_icon.png",
                  color: kPrimaryColor,
                ),
                onTap: () {
                  BlocProvider.of<BottomNavCubit>(context)
                      .navigationQueue
                      .addLast(BlocProvider.of<BottomNavCubit>(context)
                          .bottomNavIndex);
                  BlocProvider.of<BottomNavCubit>(context)
                      .updateBottomNavIndex(15);
                },
              ),
            ]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CustomOrderItem(
                hasStatusIcon: false,
                imgscr: "assets/icons/hashtag_icon.png",
                titleText: "رقم الطلب",
                subTitleText: "#123546"),
            CustomDivider(),
            CustomOrderItem(
                hasStatusIcon: false,
                imgscr: "assets/icons/calender_icon.png",
                titleText: "تاريخ الطلب",
                subTitleText: "5-7-2023"),
            CustomDivider(),
            CustomOrderItem(
                hasStatusIcon: false,
                imgscr: "assets/icons/vacation_icon.png",
                titleText: "نوع الإجازة",
                subTitleText: "إجازة مرضية"),
            CustomDivider(),
            CustomOrderItem(
                hasStatusIcon: false,
                imgscr: "assets/icons/hashtag_icon.png",
                titleText: "رعدد الأيام",
                subTitleText: "15 يوم"),
            CustomDivider(),
            CustomOrderItem(
                hasStatusIcon: false,
                imgscr: "assets/icons/calender_icon.png",
                titleText: "من تاريخ",
                subTitleText: "5-23-2023"),
            CustomDivider(),
            CustomOrderItem(
                hasStatusIcon: false,
                imgscr: "assets/icons/calender_icon.png",
                titleText: "إلى تاريخ",
                subTitleText: "5-23-2023"),
            CustomDivider(),
            CustomOrderItem(
                hasStatusIcon: true,
                imgscr: "assets/icons/status_icon.png",
                titleText: " الحالة",
                subTitleText: "جاري العمل على الطلب"),
          ],
        ),
      ),
    );
  }
}
