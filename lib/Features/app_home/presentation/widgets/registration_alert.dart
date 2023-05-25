import 'package:fingerPrint/Features/introduction/presentation/intro_screen.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../register/widgets/styles.dart';

AlertDialog alertRegistration(context) {
  late AppLocalizations locale;
  locale = AppLocalizations.of(context)!;
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
          Image.asset("assets/images/Ok-amico.png",
              height: 100, width: 100),
          Gaps.vGap20,
           Text(
            locale.translate('Attendance_leaving')!,
            style: TextStyle(fontSize: 15),
          ),
          Gaps.vGap20,
          CustomButton(
              screenWidth: MediaQuery.of(context).size.width * 0.4,
              buttonTapHandler: () {
                Navigator.pop(context);
              },
              buttonText: locale.translate('confirm')!)
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
           SizedBox(
            width: 250,
            child: Text(
              locale.translate('time_of_checkout')!,
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
                  buttonText:locale.translate('confirm')!),
              CustomButton(
                  buttonBackGroundColor: Colors.white,
                  screenWidth: MediaQuery.of(context).size.width * 0.3,
                  buttonTapHandler: () {
                    Navigator.pop(context);
                  },
                  haveBorder: true,
                  buttonText:locale.translate('cancel')!),
            ],
          )
        ],
      ),
    ),
  );
}
