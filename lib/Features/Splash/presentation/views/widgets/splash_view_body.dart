import 'dart:async';

import 'package:flutter/material.dart';

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
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [kPrimaryColor, Colors.white.withOpacity(0.5)],
                  stops: [10, 50]),
            ),
          ),
          Image.asset(
            'assets/images/splash_image.png',
            width: 50,
          ),
        ],
      ),
    );
  }
}
