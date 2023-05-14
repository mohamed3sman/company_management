import 'package:fingerPrint/Features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:fingerPrint/Features/vacation_view/widgets/tap_bar_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VacationView extends StatelessWidget {
  const VacationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff7350cb),
        onPressed: () {
          BlocProvider.of<BottomNavCubit>(context)
              .navigationQueue
              .addLast(BlocProvider.of<BottomNavCubit>(context).bottomNavIndex);
          BlocProvider.of<BottomNavCubit>(context).updateBottomNavIndex(12);
        },
        child: const Icon(Icons.add),
      ),
      body: const TapBarViewBody(),
    );
  }
}
