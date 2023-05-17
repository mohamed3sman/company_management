
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import '../widgets/messeges_list_item.dart';

class MessegesScreen extends StatelessWidget {
  const MessegesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon:const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ))
        ],
        title:const Text(
          "الرسائل",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Stack(
          alignment: Alignment.bottomLeft,
          //  crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: screenSize.height * .84,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 17,
                itemBuilder: (context, index) {
                  return const MessegesListItem();
                },
              ),
            ),
            Card(
              elevation: 6,
              shape: const StadiumBorder(),
              child: CustomButton(
                  screenWidth: screenSize.width * .37,
                  buttonTapHandler: () {
                    BlocProvider.of<BottomNavCubit>(context)
                        .navigationQueue
                        .addLast(BlocProvider.of<BottomNavCubit>(context)
                            .bottomNavIndex);
                    BlocProvider.of<BottomNavCubit>(context)
                        .updateBottomNavIndex(11);
                    //IMPLEMENT NAVIGATION TO A NEW MESSEGE
                  },
                  buttonText: "رسالة جديدة"),
            )
          ],
        ),
      ),
    );
  }
}
