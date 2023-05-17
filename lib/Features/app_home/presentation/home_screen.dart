import 'package:fingerPrint/Features/app_home/presentation/widgets/home_screen_body.dart';
import 'package:fingerPrint/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: HomeScreenBody(),
      ),
    );
  }
}
