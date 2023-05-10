import 'package:fingerPrint/Features/vacation_request/presentation/widgets/custom_drop_down_list.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/gaps.dart';
import '../../../../core/widgets/custom_orders_raw_icon.dart';

class VacationRequestScreen extends StatelessWidget {
  const VacationRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        
        height: MediaQuery.of(context).size.height * .87,
        child: SingleChildScrollView(
          child: Column(children: [
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
                            TextStyle(color: Color(0xff9d9d9e), fontSize: 13),
                      ),
                      leading: const Icon(Icons.person_pin),
                      trailing: IconButton(
                        onPressed: () {
                          print("new notification");
                        },
                        icon: const Icon(
                          Icons.notifications_none_rounded,
                          size: 30,
                          color: Color(0xff707070),
                        ),
                      ),
                      subtitle: const Text(
                        "أحمد محمد عبدالرحمن",
                        style:
                            TextStyle(color: Color(0xff1d1d1d), fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gaps.vGap8,
            const Text("طلب إجازة",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                )),
                const CustomOrdersRawIcon(rawText: "نوع الإجازة",rawIcon: Icon(Icons.abc)),
                const CustomDropDownList()
          ]),
        ),
      ),
    );
  }
}
