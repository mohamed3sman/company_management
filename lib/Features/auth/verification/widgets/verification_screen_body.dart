import 'package:fingerPrint/Features/auth/verification/widgets/verification_screen_form.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import '../../register/widgets/clipping_color.dart';
import '../../register/widgets/register_form_decoration.dart';

class VerificationScreenBody extends StatelessWidget {
  const VerificationScreenBody({super.key});

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
            padding: const EdgeInsets.only(top: 140),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: SizeConfig.screenHeight! * 0.70,
                    width: SizeConfig.screenWidth! * 0.85,
                    decoration: FormDecoration(),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: VerificationScreenForm(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
