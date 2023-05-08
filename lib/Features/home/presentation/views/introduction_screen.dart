// import 'package:flutter/material.dart';
// import 'package:introduction_screen/introduction_screen.dart';

// class IntroScreen extends StatelessWidget {
//   const IntroScreen({super.key});
//   Widget getIntroPages(
//       {required String imagePath,
//       required Size screenSize,
//       required String title}) {
//     return Stack(
//       children: [
//         Image.asset("assets/images/back_ground.png",
//             width: double.infinity, fit: BoxFit.cover),
//         Padding(
//           padding: const EdgeInsets.only(top: 100),
//           child: Image.asset(
//             imagePath,
//             fit: BoxFit.cover,
//           ),
//         ),
//         Positioned(
//           top: screenSize.height * .7,
//           right: screenSize.width * .07,
//           child: Column(
//               textDirection: TextDirection.ltr,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Text(
//                   "نظام بصمتك",
//                   style: TextStyle(color: Colors.white, fontSize: 25),
//                 ),
//                 SizedBox(
//                   width:screenSize.width-25 ,
//                   child: Text(
//                     title,
//                     textAlign: TextAlign.right,
//                     softWrap: true,
//                     style: TextStyle(color: Colors.white, fontSize: 25),
//                   ),
//                 ),
//               ]),
//         )
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     return IntroductionScreen(
//       dotsDecorator: DotsDecorator(
//           spacing: EdgeInsets.only(left: 2, right: 2),
//           color: Colors.white,
//           size: Size(12, 12),
//           activeColor: Color(0x3816a2)),
//       dotsContainerDecorator: BoxDecoration(),
//       // controlsPadding: EdgeInsets.only(left: screenSize.width * .40),
//       rtl: true,
//       resizeToAvoidBottomInset: false,
//       next: Text(
//         "تخطي",
//         style: TextStyle(color: Colors.white, fontSize: 25),
//       ),
//       done: Text(
//         "تخطي",
//         style: TextStyle(color: Colors.white, fontSize: 25),
//       ),
//       nextFlex: 6,
//       doneStyle: TextButton.styleFrom(alignment: Alignment.bottomLeft),

//       nextStyle: TextButton.styleFrom(
//           backgroundColor: null, alignment: Alignment.bottomLeft),
//       onDone: () {
        
//       },

//       showDoneButton: true,
//       showNextButton: true,
//       rawPages: [
//         getIntroPages(
//             imagePath: "assets/images/intro1.png",
//             screenSize: screenSize,
//             title: "لإدارة الموارد البشرية بشكل متكامل"),
//         getIntroPages(
//             imagePath: "assets/images/intro2.png",
//             screenSize: screenSize,
//             title: "يقدم لك تقارير مفصلة عن جميع موظفيك"),
//         getIntroPages(
//             imagePath: "assets/images/intro3.png",
//             screenSize: screenSize,
//             title: "يمكن للموظف عرض رصيد إجازاته المستحقة")
//       ],
//     );
//   }
// }
