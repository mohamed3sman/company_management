

import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../widgets/messeges_list_item.dart';

class MessegesScreen extends StatelessWidget {
  const MessegesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Stack(
          alignment: Alignment.bottomLeft,
          //  crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: screenSize.height*.83,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 17,
                itemBuilder: (context, index) {
                  return MessegesListItem();
                },
              ),
            ),
            Card(
              elevation: 6,
              shape: StadiumBorder(),
              child: CustomButton(
                  screenWidth: screenSize.width * .37,
                  buttonTapHandler: () {},
                  buttonText: "رسالة جديدة"),
            )

           
          ],
        ),
      ),
    );
  }
}
