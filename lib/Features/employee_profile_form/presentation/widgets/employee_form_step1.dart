import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_orders_raw_icon.dart';
import '../../../dept_request/presentation/widgets/out_put_container.dart';
import '../../../register/widgets/custom_text_field.dart';
import '../../../vacation_request/presentation/widgets/custom_drop_down_list.dart';

class EmployeeProfileStep1 extends StatelessWidget {
  const EmployeeProfileStep1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        SizedBox(
          height: screenSize.height ,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
             
              // NumberStepper(
              //   activeStepBorderPadding: 0,
              //   stepColor: Colors.red,
              //   lineDotRadius: 2,
              //   lineLength: screenSize.width * .5,
              //   enableStepTapping: false,
              //   enableNextPreviousButtons: false,
              //   activeStep: 0,
              //   lineColor: kPrimaryColor,
              //   numbers: [1, 2],
              //   activeStepBorderColor: kPrimaryColor,
              //   activeStepColor: kPrimaryColor,
              // ),
           
              Row(
                children: [
                  const CustomOrdersRawIcon(
                      rawText: "رقم الخطاب",
                      iconImagePath: "assets/icons/hashtag_icon.png"),
                  SizedBox(
                    width: screenSize.width * .25,
                  ),
                  const CustomOrdersRawIcon(
                      rawText: "التاريخ",
                      iconImagePath: "assets/icons/calender_icon.png"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutPutContainer(
                      containerWidth: screenSize.width * .41,
                      containerText: "125"),
                  const Spacer(),
                  OutPutContainer(
                      containerWidth: screenSize.width * .41,
                      containerText: "25/9/2023"),
                ],
              ),
              CustomOrdersRawIcon(
                rawText: "اللقب",
                iconImagePath: "assets/icons/subtitle_icon.png",
              ),
              CustomDropDownList(hintText: "المحترم"),
              CustomOrdersRawIcon(
                  rawText: "الجهة",
                  iconImagePath: "assets/icons/language_icon.png"),
              CustomTextField(hintTextField: "إلى من يهمة الأمر"),
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
                  Spacer(),
                  CustomDropDownList(
                    hintText: "اختر..",
                    width: screenSize.width * .41,
                  ),
                ],
              ),
              CustomOrdersRawIcon(
                  rawText: "الموضوع",
                  iconImagePath: "assets/icons/notes_icon.png"),
              CustomTextField(
                containerHeight: 80,
                hintTextField: "الموضوع",
                fieldLines: 3,
              ),
            ]),
          ),
        ),
        CustomButton(
          screenWidth: screenSize.width * .3,
          buttonTapHandler: () {
           
          },
          buttonText: "عرض النموذج",
        ),
      ],
    );
  }
}
