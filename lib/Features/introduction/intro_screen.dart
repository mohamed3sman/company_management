import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../core/utils/constants.dart';
import '../home/presentation/views/widgets/custom_intro_clipper.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});
  Widget getIntroPages(
      {required String imagePath,
      required Size screenSize,
      required String title}) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          ClipPath(
            clipper: RoundedClipper(screenSize.height - 150),
            child: AnimatedContainer(
              duration: const Duration(seconds: 3),
              height: screenSize.height - 100,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: screenSize.height * .7,
            right: screenSize.width * .07,
            child: Column(
                textDirection: TextDirection.ltr,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
                      style: TextStyle(color: Colors.white, fontSize: 20),
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
      dotsDecorator: const DotsDecorator(
          activeSize: Size(12, 12),
          spacing: EdgeInsets.only(left: 2, right: 0),
          color: Colors.white,
          size: Size(12, 12),
          activeColor: kSecondaryColor),
      //  dotsContainerDecorator: BoxDecoration(color: Colors.white),
      rtl: true,
      resizeToAvoidBottomInset: false,
      next: const Text(
        "تخطي",
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      done: const Text(
        "تخطي",
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      nextFlex: 5,
      doneStyle: TextButton.styleFrom(alignment: Alignment.bottomLeft),
      nextStyle: TextButton.styleFrom(alignment: Alignment.bottomLeft),
      onDone: () {
        Navigator.pushReplacementNamed(context, kBookLanguageScreen);
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
