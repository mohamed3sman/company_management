import 'package:animate_do/animate_do.dart';
import 'package:fingerPrint/Features/status_request/widgets/tap_bar_view_body.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:fingerPrint/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/constants.dart';
import '../bottom_nav/presentation/cubit/bottom_nav_cubit.dart';

class StatusRequest extends StatelessWidget {
  const StatusRequest({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    SizeConfig().init(context);
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: screenSize * .1, child: CustomAppBar()),
      backgroundColor: Colors.white,
      body: FadeIn(child: TapBarViewBody()),
      floatingActionButton: MaterialButton(
        onPressed: () {
          BlocProvider.of<BottomNavCubit>(context)
              .navigationQueue
              .addLast(BlocProvider.of<BottomNavCubit>(context).bottomNavIndex);
          BlocProvider.of<BottomNavCubit>(context).updateBottomNavIndex(5);
        },
        color: kPrimaryColor,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 27,
        ),
      ),
    );
  }
}
