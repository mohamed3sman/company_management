import 'package:fingerPrint/core/widgets/custom_request_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_orders_raw_icon.dart';
import '../../../bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import '../../../../core/widgets/out_put_container.dart';
import '../../../request_vacation/presentation/widgets/custom_drop_down_list.dart';

class EmployeeProfileStep1 extends StatelessWidget {
  const EmployeeProfileStep1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Row(
          //   children: [
          //     const CustomOrdersRawIcon(
          //         rawText: "رقم الخطاب",
          //         iconImagePath: "assets/icons/hashtag_icon.png"),
          //     SizedBox(
          //       width: screenSize.width * .25,
          //     ),
          //     const CustomOrdersRawIcon(
          //         rawText: "التاريخ",
          //         iconImagePath: "assets/icons/calender_icon.png"),
          //   ],
          // ),
          Row(
            children: [
              OutPutContainer(
                  containerTitle: "رقم الخطاب",
                  containerIconPath: "assets/icons/hashtag_icon.png",
                  containerWidth: screenSize.width * .35,
                  containerText: "125"),
              const Spacer(),
              OutPutContainer(
                  containerIconPath: "assets/icons/calender_icon.png",
                  containerTitle: "التاريخ",
                  containerWidth: screenSize.width * .41,
                  containerText: "25/9/2023"),
            ],
          ),
          const CustomOrdersRawIcon(
            rawText: "اللقب",
            iconImagePath: "assets/icons/subtitle_icon.png",
          ),
          CustomDropDownList(hintText: "المحترم"),
          const CustomOrdersRawIcon(rawText: "الجهة"),
          CustomRequestsTextField(hintTextField: "إلى من يهمة الأمر"),
          Row(
            children: [
              const CustomOrdersRawIcon(
                  rawText: "نهاية اللقب",
                  iconImagePath: "assets/icons/subtitle_icon.png"),
              SizedBox(
                width: screenSize.width * .25,
              ),
              const CustomOrdersRawIcon(
                  rawText: "النماذج",
                  iconImagePath: "assets/icons/diamond_icon.png"),
            ],
          ),
          Row(
            children: [
              CustomDropDownList(
                hintText: "سلمها اللة",
                width: screenSize.width * .41,
              ),
              const Spacer(),
              CustomDropDownList(
                hintText: "اختر..",
                width: screenSize.width * .41,
              ),
            ],
          ),
          const CustomOrdersRawIcon(
            rawText: "الموضوع",
            iconImagePath: "assets/icons/notes_icon.png",
          ),
          CustomRequestsTextField(
            containerHeight: 80,
            hintTextField: "الموضوع",
            fieldLines: 3,
          ),
        ],
      ),
    );
  }
}
