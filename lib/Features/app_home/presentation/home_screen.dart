import 'package:fingerPrint/Features/app_home/presentation/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: FadeInUp(
         
         
          child: HomeScreenBody()),
      ),
    );
  }
}
