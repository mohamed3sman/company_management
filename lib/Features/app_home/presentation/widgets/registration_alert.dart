import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../register/widgets/styles.dart';

AlertDialog alertRegistration(context) {
  return AlertDialog(
    insetPadding: const EdgeInsets.symmetric(horizontal: 20),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0))),
    contentPadding: const EdgeInsets.only(top: 10.0, right: 10),
    actionsAlignment: MainAxisAlignment.end,
    actionsOverflowDirection: VerticalDirection.up,
    alignment: Alignment.center,
    content: SizedBox(
      width: MediaQuery.of(context).size.width / 1.3,
      height: MediaQuery.of(context).size.height * .35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/bank_account.png",
              height: 100, width: 100),
          Gaps.vGap20,
          const Text(
            "تم تسجيل الحضور / الانصراف بنجاح",
            style: TextStyle(fontSize: 15),
          ),
          Gaps.vGap20,
          CustomButton(
              screenWidth: MediaQuery.of(context).size.width * 0.4,
              buttonTapHandler: () {
                Navigator.pop(context);
              },
              buttonText: "تاكيد")
        ],
      ),
    ),
  );
}

AlertDialog alertLeaveRegistration(context) {
  return AlertDialog(
    insetPadding: const EdgeInsets.symmetric(horizontal: 20),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0))),
    contentPadding: const EdgeInsets.only(top: 10.0, right: 10),
    actionsAlignment: MainAxisAlignment.end,
    actionsOverflowDirection: VerticalDirection.up,
    alignment: Alignment.center,
    content: SizedBox(
      width: MediaQuery.of(context).size.width / 1.1,
      height: MediaQuery.of(context).size.height * .32,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 250,
            child: Text(
              "'وقت تسجيل الانصراف هو 04:30 مساءاْ  هل تريد تسجيل الانصراف الآن ؟'",
              textAlign: TextAlign.center,
              style: Styles.textStyle14,
            ),
          ),
          Gaps.vGap30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                  screenWidth: MediaQuery.of(context).size.width * 0.3,
                  buttonTapHandler: () {
                    Navigator.pop(context);
                  },
                  buttonText: "تاكيد"),
              CustomButton(
                  buttonBackGroundColor: Colors.white,
                  screenWidth: MediaQuery.of(context).size.width * 0.3,
                  buttonTapHandler: () {
                    Navigator.pop(context);
                  },
                  haveBorder: true,
                  buttonText: "إلغاء"),
            ],
          )
        ],
      ),
    ),
  );
}
