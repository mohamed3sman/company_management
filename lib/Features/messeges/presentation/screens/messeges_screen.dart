import 'package:animate_do/animate_do.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constants.dart';
import '../../../bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import '../widgets/messeges_list_item.dart';

class MessegesScreen extends StatelessWidget {
  const MessegesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    final screenSize = MediaQuery.of(context).size;
    return FadeInUp(
      duration: Duration(milliseconds: 300),
      child: Scaffold(
        appBar:
            //*******USE CUSTOM APP BAR HERE*****
            AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ))
          ],
          title: Text(
            locale.translate('message')!,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        floatingActionButton: ElevatedButton(
          onPressed: () {
            BlocProvider.of<BottomNavCubit>(context).navigationQueue.addLast(
                BlocProvider.of<BottomNavCubit>(context).bottomNavIndex);
            BlocProvider.of<BottomNavCubit>(context).updateBottomNavIndex(12);
            //IMPLEMENT NAVIGATION TO A NEW MESSEGE
          },

          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              )
            ),
            elevation: MaterialStatePropertyAll(4),
            padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(vertical: 7,horizontal: 10)
            ),
            backgroundColor: MaterialStatePropertyAll(
              kPrimaryColor,
            ),
          ),
          // shape:  RoundedRectangleBorder(borderRadius:
          // BorderRadius.circular(12)),
          // padding: const EdgeInsets.all(20),
          child: Text(locale.translate('new_message')!),

          //  Card(
          //       elevation: 6,
          //       shape: const StadiumBorder(),
          //       child: CustomButton(
          //           screenWidth: screenSize.width * .32,
          //           buttonTapHandler: () {
          //             BlocProvider.of<BottomNavCubit>(context)
          //                 .navigationQueue
          //                 .addLast(BlocProvider.of<BottomNavCubit>(context)
          //                     .bottomNavIndex);
          //             BlocProvider.of<BottomNavCubit>(context)
          //                 .updateBottomNavIndex(12);
          //             //IMPLEMENT NAVIGATION TO A NEW MESSEGE
          //           },
          //           buttonText: locale.translate('new_message')!),
          //     )
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 17,
            itemBuilder: (context, index) {
              return MessegesListItem();
            },
          ),
        ),
      ),
    );
  }
}
