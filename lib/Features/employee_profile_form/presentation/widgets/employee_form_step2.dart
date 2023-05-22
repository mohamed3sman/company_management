import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/widgets/custom_request_text_field.dart';
import 'package:flutter/material.dart';

class EmployeeProfileStep2 extends StatelessWidget {
  const EmployeeProfileStep2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text("السيد / إلى من يهمه الأمر"),
                  Spacer(),
                  Text("سلمها الله"),
                ],
              ),
              Gaps.vGap10,
              const Text(
                "السلام عليكم و رحمة الله و بركاتة ، وبعد :",
                style: TextStyle(fontSize: 12),
              ),
              Gaps.vGap30,
              CustomRequestsTextField(
                fieldLines: 10,
                hintTextField: "",
                initialValue:
                    "تشهد الجمعية الخيرية لرعاية الأيتام ببريده (أبناء) بأن الموضحة بياناته أعلاه يعمل بالجمعية من تاريخ",
                containerHeight: 130,
              ),
              CustomRequestsTextField(
                fieldLines: 10,
                hintTextField: "",
                initialValue:
                    "وقد اعطى هذا التعريف بناءاً على طلبه دون أدنى مسؤولية تجاه الجمعية والله يحفظكم ويرعاكم ؛؛؛",
                containerHeight: 130,
              )
            ],
          ),
        ),
      ),
    );
  }
}
