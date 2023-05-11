import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';
import 'sliding_text.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({Key? key}) : super(key: key);

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  Future checkFirstSeen() async {
    print("checking");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);

    if (seen) {
      // print("seen");
      Navigator.pushReplacementNamed(context, kBottomNav);
      // Navigator.of(context).pushReplacement(
      //     new MaterialPageRoute(builder: (context) => new Home()));
    } else {
      await prefs.setBool('seen', true);
      //  print("first time");
      Future.delayed(const Duration(seconds: 2));
      Navigator.pushReplacementNamed(context, kLanguageScreen);

      // Navigator.of(context).pushReplacement(
      //     new MaterialPageRoute(builder: (context) => new IntroScreen()));
    }
  }

  @override
  // void afterFirstLayout(BuildContext context) => checkFirstSeen();

  void initState() {
    super.initState();
    initSlidingAnimation();
    checkFirstSeen();
    // navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  // void navigateToHome() {
  //   Future.delayed(
  //     const Duration(seconds: 2),
  //     () {
  //       // Get.to(() => const HomeView(),
  //       //     // calculations
  //       //     transition: Transition.fade,
  //       //     duration: kTranstionDuration);

  //       //   GoRouter.of(context).push(AppRouter.kHomeView);

  //       Navigator.pushReplacementNamed(context, kIntroScreen);
  //     },
  //   );
  // }
}
