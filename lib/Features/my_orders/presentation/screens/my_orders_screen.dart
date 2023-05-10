import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';

import '../widgets/my_orders_grid_view.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //ASK ENG ASMAA WHICH IS BETTER ?
                // IconButton(
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.notifications_none_rounded,
                //     size: 30,
                //   ),
                // ),
                Expanded(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    //   color: Colors.red,
                    child: ListTile(
                      onTap: () {
                        print("List tile");
                      },
                      // selectedColor: Colors.red,
                      title: const Text(
                        "أهلا وسهلا",
                        style:
                            TextStyle(color: Color(0xff9d9d9e), fontSize: 15),
                      ),
                      leading: const Icon(Icons.person_pin,size: 45,),
                      trailing: IconButton(
                        onPressed: () {
                          print("new notification");
                        },
                        icon: const Icon(
                          Icons.notifications_none_rounded,
                          size: 32,
                          color: Color(0xff707070),
                        ),
                      ),
                      subtitle: const Text(
                        "أحمد محمد عبدالرحمن",
                        style:
                            TextStyle(color: Color(0xff1d1d1d), fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gaps.vGap15,
            const Text("طلباتي",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                )), Gaps.vGap15,
            MyOrdersGridView(),
          ],
        ),
      ),
    );
  }
}
