import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
class SuccessRegisterAlert extends StatelessWidget {
  const SuccessRegisterAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
               Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child:
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  height:  MediaQuery.of(context).size.height*0.5,
                  child: SizedBox(
                    height:  MediaQuery.of(context).size.height*0.6,
                    width: MediaQuery.of(context).size.height*0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            "assets/images/87f293cb-b9b4-4dc1-a81c-074021b6bed1.png"),
                        Gaps.vGap20,
                        const Text("تم تسجيل الحضور / الانصراف بنجاح"),
                        Gaps.vGap20,
                        CustomButton(screenWidth:  MediaQuery.of(context).size.width*0.2, buttonTapHandler: (){}, buttonText: "تاكيد")
                      ],
                    ),
                  ),
                ),
              );

  }
}
