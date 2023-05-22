import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../../core/utils/constants.dart';
import '../../../core/widgets/custom_circle_clipper.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}
late AppLocalizations locale;

class _IntroScreenState extends State<IntroScreen> {

  Widget getIntroPages(
      {
        required String imagePath,
      required Size screenSize,
      required String title}) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          ClipPath(
            clipper: RoundedClipper(),
            child: AnimatedContainer(
              duration: const Duration(seconds: 3),
              height: screenSize.height - 80,
              color: Colors.white,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 40),
            child: Image.asset(
              imagePath,
              //fit: BoxFit.cover,
              alignment: Alignment.center,
              height: screenSize.height * .5,
              width: screenSize.width * .8,
            ),
          ),
          Positioned(
            top: screenSize.height * .65,
            right: screenSize.width * .07,
            child: Column(
                textDirection: TextDirection.ltr,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Gaps.vGap12,
                   Text(locale.translate('finger_print_system')!,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    width: screenSize.width - 25,
                    child: Text(
                      title,
                      textAlign: TextAlign.right,
                      softWrap: true,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return IntroductionScreen(
      dotsDecorator: DotsDecorator(
          // spacing: EdgeInsets.only(left: 2, right: 3),
          color: Colors.white,
          size: Size(screenSize.width * .025, screenSize.height * .025),
          activeColor: kSecondaryColor),
      //  dotsContainerDecorator: BoxDecoration(color: Colors.red),
      rtl: true,
      // resizeToAvoidBottomInset: true,
      next: Text(
        locale.translate("skip")!,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      done: Text(
        locale.translate("skip")!,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      // nextFlex: 1,
      // dotsFlex:3,
      doneStyle: TextButton.styleFrom(alignment: Alignment.bottomLeft),
      nextStyle: TextButton.styleFrom(alignment: Alignment.bottomLeft),
      onDone: () {
        Navigator.pushReplacementNamed(context, kLoginScreen);
      },

      showDoneButton: true,

      rawPages: [
        getIntroPages(
            imagePath: "assets/images/intro1.png",
            screenSize: screenSize,
            title:  locale.translate('manage_human_resources_in_an_integrated_manner')!),
        getIntroPages(
            imagePath: "assets/images/intro2.png",
            screenSize: screenSize,
            title: locale.translate('provides_you_with_detailed_reports_on_all_your_employees')!),
        getIntroPages(
            imagePath: "assets/images/intro3.png",
            screenSize: screenSize,
            title: locale.translate('the_employee_can_view_his_accrued_leave_balance')!),
      ],
    );
  }
}
