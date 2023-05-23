import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';

class CustomSimpleAppBar extends StatelessWidget {
  CustomSimpleAppBar({
    super.key,
    required this.appBarTitle,
    this.leadingWidget,
  });

  Widget? leadingWidget;

  final String appBarTitle;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return AppBar(
      leadingWidth: screenSize.width * .2,
      leading: leadingWidget,
      elevation: 0,
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: () {
              BlocProvider.of<BottomNavCubit>(context).updateBottomNavIndex(
                  BlocProvider.of<BottomNavCubit>(context)
                      .navigationQueue
                      .last);
              // BlocProvider.of<BottomNavCubit>(context)
              //     .navigationQueue
              //     .removeLast();
            },
            child: const Icon(
              FontAwesomeIcons.arrowLeftLong,
              color: Colors.black,
            ),
          ),
        ),
      ],
      backgroundColor: Colors.white,
      title: Center(
        child: Text(
          appBarTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
