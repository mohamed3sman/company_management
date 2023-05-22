import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:fingerPrint/core/widgets/custom_circle_clipper.dart';
import 'package:fingerPrint/core/widgets/custom_elevated_container.dart';
import 'package:flutter/material.dart';
import 'login_screen_form.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipPath(
            clipper: RoundedClipper(),
            child: Container(
              color: kPrimaryColor,
              height: SizeConfig.screenHeight! * 0.45,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedContainer(
                  containerChild: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: LoginViewForm(),
                  ),
                  containerHeight: SizeConfig.screenHeight! * 0.62,
                  containerWidth: SizeConfig.screenWidth! * 0.85,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40, left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        locale.translate('you_do_not_have_an_account')!,
                        style:
                            const TextStyle(color: kPrimaryColor, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, kRegisterScreen);
                        },
                        child: Column(
                          children: [
                            Text(
                              locale.translate('create_account')!,
                              style: const TextStyle(
                                  color: kSecondaryColor,
                                  fontSize: 15,
                                  decorationThickness: 2,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Image.asset(
                "assets/images/logo.png",
                height: 130,
                width: 130,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
