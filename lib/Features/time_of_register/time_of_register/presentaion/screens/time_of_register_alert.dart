// import 'package:flutter/material.dart';
// import 'package:gradients/gradients.dart';
//
// class TimeOfRegisterAlert extends StatelessWidget {
//   const TimeOfRegisterAlert({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: ElevatedButton(
//         onPressed: () {
//           showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return Dialog(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 child: Container(
//                   padding: const EdgeInsets.all(10),
//                   margin: const EdgeInsets.all(10),
//                   height: 260,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'وقت تسجيل الانصراف هو 04:30 مساءاْ  هل تريد تسجيل الانصراف الآن ؟',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontSize: 15),
//                       ),
//                       const SizedBox(height: 20.0),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           const SizedBox(height: 60),
//                           Container(
//                             width: 100,
//                             height: 40,
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.black),
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.black,
//                             ),
//                             child: ElevatedButton(
//                               onPressed: () {},
//                               style: ButtonStyle(
//                                 backgroundColor:
//                                     MaterialStateProperty.all(Colors.white),
//                                 padding: MaterialStateProperty.all(
//                                     const EdgeInsets.all(12)),
//                                 shape: MaterialStateProperty.all(
//                                     RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10))),
//                               ),
//                               child: const Text(
//                                 "الغاء",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   color: Color(0xff282828),
//
//
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 100,
//                             height: 40,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               gradient: const LinearGradientPainter(
//                                 colors: <Color>[
//                                   Colors.white,
//                                   Color(0xd97350cb),
//                                   Color(0xff3816a2),
//                                   Colors.black
//                                 ],
//                               ),
//                             ),
//                             child: ElevatedButton(
//                               onPressed: () {},
//                               style: ButtonStyle(
//                                 backgroundColor: MaterialStateProperty.all(
//                                     const Color(0xd97350cb)),
//                                 padding: MaterialStateProperty.all(
//                                     const EdgeInsets.all(12)),
//                                 shape: MaterialStateProperty.all(
//                                     RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10))),
//                               ),
//                               child: const Text(
//                                 "تاكيد",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   color: Color(0xffffffff),
//
//
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 60),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ); // Dialog of Time of Register
//             },
//           );
//         },
//         child: const Text(
//           "ok",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//     ));
//   }
// }
import 'package:fingerPrint/Features/time_of_register/time_of_register/presentaion/widgets/widget_row_time_of_register.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';

import '../widgets/widget_text_time_of_register.dart';

class TimeOfRegisterAlert extends StatelessWidget {
  const TimeOfRegisterAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomTimeOfRegister(
                text:
                    "'وقت تسجيل الانصراف هو 04:30 مساءاْ  هل تريد تسجيل الانصراف الآن ؟'"),
            Gaps.hGap20,
            CustomRowTimeOfRegister(),
          ],
        ),
      ),
    ); // Dialog of Time of Register
  }
}
