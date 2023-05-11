import 'package:fingerPrint/Features/login_view/widgets/login_view_form.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';
import '../../register_view/widgets/clipping_color.dart';
import '../../register_view/widgets/register_form_decoration.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              color: const Color(0xff9a80d9),
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.58,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: FormDecoration(),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: LoginViewForm(),
                    ),
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
                          Navigator.pushNamed(context, kRegisterScreen);
                        },
                        child: Text(
                          'إنشاء حساب',
                          style: Styles.textStyle20.copyWith(
                            color: const Color(0xff8f7abd),
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                          ),
                        ),
                      ),
                      Text(
                        '! ليس لديك حساب',
                        style: Styles.textStyle20
                            .copyWith(color: const Color(0xff8f7abd)),
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