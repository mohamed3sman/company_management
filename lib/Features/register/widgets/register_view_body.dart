<<<<<<< HEAD
import 'package:fingerPrint/Features/register/widgets/register_form_decoration.dart';
import 'package:fingerPrint/Features/register/widgets/register_view_form.dart';
import 'package:fingerPrint/core/utils/constants.dart';
=======
>>>>>>> 6a5a4822ab73ee50b50f4fc188a9585076dc1a4b
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/styles.dart';
<<<<<<< HEAD
import '../../../core/widgets/custom_circle_clipper.dart';
import '../../auth/login/presentation/login_screen.dart';
=======
import '../../auth/login/presentation/login_screen.dart';
import '../../auth/register/widgets/clipping_color.dart';
import '../../auth/register/widgets/register_form_decoration.dart';
import '../../auth/register/widgets/register_view_form.dart';
>>>>>>> 6a5a4822ab73ee50b50f4fc188a9585076dc1a4b

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Stack(
        children: [
          ClipPath(
<<<<<<< HEAD
            clipper: RoundedClipper(),
            child: Container(
              color: kPrimaryColor,
=======
            clipper: CurveClipper(),
            child: Container(
              color: const Color(0xff9a80d9),
>>>>>>> 6a5a4822ab73ee50b50f4fc188a9585076dc1a4b
              height: SizeConfig.screenHeight! * 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Center(
                  child: Container(
<<<<<<< HEAD
                    height: SizeConfig.screenHeight! * 0.77,
=======
                    height: SizeConfig.screenHeight! * 0.80,
>>>>>>> 6a5a4822ab73ee50b50f4fc188a9585076dc1a4b
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
<<<<<<< HEAD
                        ' لدي حساب بالفعل ! ',
                        style: Styles.textStyle20
                            .copyWith(color: kPrimaryColor, fontSize: 13.sp),
=======
                        '! لدي حساب بالفعل',
                        style: Styles.textStyle20.copyWith(
                            color: const Color(0xff8f7abd), fontSize: 17.sp),
>>>>>>> 6a5a4822ab73ee50b50f4fc188a9585076dc1a4b
                      ),
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
<<<<<<< HEAD
                              color: kSecondaryColor,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              fontSize: 13.sp),
=======
                              color: const Color(0xff8f7abd),
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              fontSize: 17.sp),
>>>>>>> 6a5a4822ab73ee50b50f4fc188a9585076dc1a4b
                        ),
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
