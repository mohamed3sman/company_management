import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../auth/login/presentation/login_screen.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  late Timer _timer;
  @override
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);
    if (seen) {
      // print("seen");
     // Navigator.pushReplacementNamed(context, kLoginScreen);
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

  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
    Future.delayed(Duration(seconds: 3),() {
      checkFirstSeen();
    },);
  }

  @override
  void dispose() {
    _timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [kPrimaryColor, Colors.white.withOpacity(0.5)],
                stops: const [10, 50]),
          ),
        ),
        Center(
          child: Roulette(
            child: Image.asset(
              'assets/images/splash_image.png',
              width: 180.w,
            ),
          ),
        ),
      ],
    );
  }
}
