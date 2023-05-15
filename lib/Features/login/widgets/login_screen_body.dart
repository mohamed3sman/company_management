import 'package:fingerPrint/Features/login/widgets/login_screen_form.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:fingerPrint/core/widgets/custom_elevated_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/styles.dart';
import '../../register/widgets/clipping_color.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Stack(
        children: [
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              color: kPrimaryColor,
              height: SizeConfig.screenHeight! * 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240),
            child: Column(
              children: [
                Center(
                  child: CustomElevatedContainer(
                    containerChild: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: LoginViewForm(),
                    ),
                    containerHeight: SizeConfig.screenHeight! * 0.58,
                    containerWidth: SizeConfig.screenWidth! * 0.85,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, kRegisterScreen);
                        },
                        child: Text(
                          locale.translate('login')!,
                          style: Styles.textStyle20.copyWith(
                              color: const Color(0xff8f7abd),
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              fontSize: 17.sp),
                        ),
                      ),
                      Text(
                        locale.translate('you_do_not_have_an_account')!,
                        style: Styles.textStyle20.copyWith(
                            color: const Color(0xff8f7abd), fontSize: 17.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
