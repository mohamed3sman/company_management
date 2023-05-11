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

class _IntroScreenState extends State<IntroScreen> {
  Widget getIntroPages(
      {required String imagePath,
      required Size screenSize,
      required String title}) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          ClipPath(
            clipper: RoundedClipper(screenSize.height - 140),
            child: AnimatedContainer(
              duration: const Duration(seconds: 3),
              height: screenSize.height - 80,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
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
                  Gaps.vGap50,
                  const Text(
                    "نظام بصمتك",
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
    return IntroductionScreen(
      dotsDecorator: DotsDecorator(
          // spacing: EdgeInsets.only(left: 2, right: 3),
          color: Colors.white,
          size: Size(screenSize.width * .025, screenSize.height * .025),
          activeColor: kSecondaryColor),
      //  dotsContainerDecorator: BoxDecoration(color: Colors.red),
      rtl: true,
      // resizeToAvoidBottomInset: true,
      next: const Text(
        "تخطي",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      done: const Text(
        "تخطي",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      nextFlex: (screenSize.width * .0111).toInt(),
      doneStyle: TextButton.styleFrom(alignment: Alignment.bottomLeft),
      nextStyle: TextButton.styleFrom(alignment: Alignment.bottomLeft),
      onDone: () {
        Navigator.pushReplacementNamed(context, kBottomNav);
      },
      showDoneButton: true,
      showNextButton: true,
      rawPages: [
        getIntroPages(
            imagePath: "assets/images/intro1.png",
            screenSize: screenSize,
            title: "لإدارة الموارد البشرية بشكل متكامل"),
        getIntroPages(
            imagePath: "assets/images/intro2.png",
            screenSize: screenSize,
            title: "يقدم لك تقارير مفصلة عن جميع موظفيك"),
        getIntroPages(
            imagePath: "assets/images/intro3.png",
            screenSize: screenSize,
            title: "يمكن للموظف عرض رصيد إجازاته المستحقة")
      ],
    );
  }
}
