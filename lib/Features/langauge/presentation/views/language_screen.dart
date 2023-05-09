import 'package:fingerPrint/Features/Splash/presentation/manger/locale_cubit/locale_cubit.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/assets.dart';
import 'package:fingerPrint/core/utils/commons.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/utils/text_Form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../home/presentation/views/widgets/custom_intro_clipper.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  late AppLocalizations locale;
  final _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    locale = AppLocalizations.of(context)!;
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        ClipPath(
          clipper: RoundedClipper(screenSize.height * .6),
          child: AnimatedContainer(
            duration: Duration(seconds: 3),
            height: screenSize.height * .5,
            color: kPrimaryColor,
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1.5)),
            width: screenSize.width * .85,
            height: screenSize.height * .6,
            child: Column(
              children: [
                SizedBox(
                  height: screenSize.height * .07,
                ),
                Text(
                  "اختر اللغة",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .03,
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Commons.showToast(context,
                              message: locale.translate('english')!);
                          BlocProvider.of<LocaleCubit>(context).toEnglish();
                        },
                        child: Card(
                          elevation: 6,
                          child: Container(
                            decoration: locale.isEnLocale
                                ? BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xff7350cb), width: 2),
                                    borderRadius: BorderRadius.circular(5))
                                : null,
                            padding: EdgeInsets.all(20),
                            width: screenSize.width * .3,
                            height: screenSize.height * .18,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  AssetsData.usFlagImage,
                                ),
                                Text("English")
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Commons.showToast(context,
                              message: locale.translate('arabic')!);
                          BlocProvider.of<LocaleCubit>(context).toArabic();
                        },
                        child: Card(
                          elevation: 6,
                          child: Container(
                            decoration: !locale.isEnLocale
                                ? BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xff7350cb), width: 2),
                                    borderRadius: BorderRadius.circular(5))
                                : null,
                            padding: EdgeInsets.all(20),
                            alignment: Alignment.center,
                            // margin: EdgeInsets.only(right: 10),
                            width: screenSize.width * .3,
                            height: screenSize.height * .18,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  AssetsData.saudiFlagImage,
                                ),
                                Text("عربي")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Text(
                  "يمكنك تغيير اللغة من قائمة الاعدادات",
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: screenSize.height * .01,
                ),
                Text("You can change language from settings"),
                SizedBox(
                  height: screenSize.height * .04,
                ),
                CustomButton(
                  buttonText: "التالي",
                  screenWidth: screenSize.width * .51,
                  buttonTapHandler: () {
                   // print("NAVIGATE");
                    //TO DO =>>NAVIGATE TO LOGIN SCREEN
                   Navigator.pushNamed(context, kLoginScreenForm);
                  },
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}






//LANGUAGE CHANGE
// Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GestureDetector(
//                 onTap: () {
//                   Commons.showToast(context,
//                       message: locale.translate('english')!);

//                   BlocProvider.of<LocaleCubit>(context).toEnglish();
//                 },
//                 child: Text(locale.translate('english')!)),
//             Gaps.hGap30,
//             GestureDetector(
//                 onTap: () {
//                   Commons.showToast(context,
//                       message: locale.translate('arabic')!);
//                   BlocProvider.of<LocaleCubit>(context).toArabic();
//                 },
//                 child: Text(locale.translate('arabic')!))
//           ],
//         ),
//       ),
    