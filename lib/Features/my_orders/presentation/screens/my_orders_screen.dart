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
                      title: Text(
                        "أهلا وسهلا",
                        style:
                            TextStyle(color: Color(0xff9d9d9e), fontSize: 13),
                      ),
                      leading: Icon(Icons.person_pin),
                      trailing: IconButton(
                        onPressed: () {
                          print("new notification");
                        },
                        icon: Icon(
                          Icons.notifications_none_rounded,
                          size: 30,
                          color: Color(0xff707070),
                        ),
                      ),
                      subtitle: Text(
                        "أحمد محمد عبدالرحمن",
                        style:
                            TextStyle(color: Color(0xff1d1d1d), fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gaps.vGap15,
            Text("طلباتي",
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
