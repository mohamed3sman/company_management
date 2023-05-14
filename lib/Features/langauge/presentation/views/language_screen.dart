import 'package:fingerPrint/Features/Splash/presentation/manger/locale_cubit/locale_cubit.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/assets.dart';
import 'package:fingerPrint/core/utils/commons.dart';
import 'package:fingerPrint/core/widgets/custom_elevated_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_circle_clipper.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  late AppLocalizations locale;

  @override
  Widget build(BuildContext context) {
    
    locale = AppLocalizations.of(context)!;
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        ClipPath(
          clipper: RoundedClipper(screenSize.height * .6),
          child: AnimatedContainer(
            duration: const Duration(seconds: 3),
            height: screenSize.height * .5,
            color: kPrimaryColor,
          ),
        ),
        Center(
          child: CustomElevatedContainer(
            containerHeight: screenSize.height * .6,
            containerWidth: screenSize.width * .85,
            containerChild: Column(
              children: [
                SizedBox(
                  height: screenSize.height * .07,
                ),
                // Gaps.vGap40,
                Text(
                 locale.translate('Choose_language')!,
                  style: const TextStyle(
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
                                        color: kPrimaryColor, width: 2),
                                    borderRadius: BorderRadius.circular(5))
                                : null,
                            padding: const EdgeInsets.all(20),
                            width: screenSize.width * .32,
                            height: screenSize.height * .18,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  AssetsData.usFlagImage,
                                  width: screenSize.width * .16,
                                  height: screenSize.height * .09,
                                ),
                                Text("English"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Commons.showToast(context,
                              message:
                              
                               locale.translate('arabic')!);
                          BlocProvider.of<LocaleCubit>(context).toArabic();
                        },
                        child: Card(
                          elevation: 6,
                          child: Container(
                            decoration: !locale.isEnLocale
                                ? BoxDecoration(
                                    border: Border.all(
                                        color: kPrimaryColor, width: 2),
                                    borderRadius: BorderRadius.circular(5),
                                  )
                                : null,
                            padding: const EdgeInsets.all(20),
                            alignment: Alignment.center,
                            width: screenSize.width * .32,
                            height: screenSize.height * .18,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  AssetsData.saudiFlagImage,
                                  width: screenSize.width * .16,
                                  height: screenSize.height * .09,
                                ),
                                const Text(
                                  "عربي",
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .05,
                ),
                Text(
                  locale.translate("language_text")!,
                  // style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: screenSize.height * .05,
                ),
                CustomButton(
                  buttonText: locale.translate("next")!,
                  screenWidth: screenSize.width * .5,
                  buttonTapHandler: () {
                    // print("NAVIGATE");
                    //TO DO =>>NAVIGATE TO LOGIN SCREEN
                    Navigator.pushNamed(context, kIntroScreen);
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
