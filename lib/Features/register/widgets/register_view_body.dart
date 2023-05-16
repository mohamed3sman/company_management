import 'package:fingerPrint/Features/register/widgets/register_form_decoration.dart';
import 'package:fingerPrint/Features/register/widgets/register_view_form.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/styles.dart';
import '../../login/login_screen.dart';
import 'clipping_color.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Stack(
        children: [
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              color: const Color(0xff9a80d9),
              height: SizeConfig.screenHeight! * 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: SizeConfig.screenHeight! * 0.80,
                    width: SizeConfig.screenWidth! * 0.85,
                    decoration: FormDecoration(),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: RegisterViewForm(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginScreen();
                          }));
                        },
                        child: Text(
                          'تسجيل الدخول',
                          style: Styles.textStyle20.copyWith(
                              color: const Color(0xff8f7abd),
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              fontSize: 17.sp),
                        ),
                      ),
                      Text(
                        '! لدي حساب بالفعل',
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
