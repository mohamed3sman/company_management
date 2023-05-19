import 'package:fingerPrint/Features/auth/register/widgets/custom_text_field.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';

class EmployeeProfileStep2 extends StatelessWidget {
  const EmployeeProfileStep2({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("السيد / إلى من يهمه الأمر"),
                  Spacer(),
                  Text("سلمها الله"),
                ],
              ),
              Gaps.vGap10,
              Text("السلام عليكم و رحمة الله و بركاتة ، وبعد :",style: TextStyle(fontSize: 12),),
             Gaps.vGap30,
              CustomTextField(
                fieldLines: 10,
                hintTextField: "",
                initialValue:
                    "تشهد الجمعية الخيرية لرعاية الأيتام ببريده (أبناء) بأن الموضحة بياناته أعلاه يعمل بالجمعية من تاريخ",
                containerHeight: 130,
              ),
              CustomTextField(
                fieldLines: 10,
                hintTextField: "",
                initialValue:
                    "وقد اعطى هذا التعريف بناءاً على طلبه دون أدنى مسؤولية تجاه الجمعية والله يحفظكم ويرعاكم ؛؛؛",
                containerHeight: 130,
              )
            ],
          ),
        ),
      
    );
  }
}
