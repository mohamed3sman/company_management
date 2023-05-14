import 'package:fingerPrint/Features/verification_view/widgets/verification_view_form.dart';
import 'package:flutter/material.dart';
import '../../login_view/widgets/login_view_form.dart';
import '../../register_view/widgets/clipping_color.dart';
import '../../register_view/widgets/register_form_decoration.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

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
            padding: const EdgeInsets.only(top: 140),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.70,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: FormDecoration(),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: VerificationViewForm(),
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
