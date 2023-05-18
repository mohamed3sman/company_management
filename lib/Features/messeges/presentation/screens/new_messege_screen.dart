import 'package:fingerPrint/Features/dept_request/presentation/widgets/out_put_container.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';

import '../../../auth/register/widgets/custom_text_field.dart';

class NewMessegeScreen extends StatelessWidget {
  const NewMessegeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.vGap50,
                Text("من"),
                Gaps.vGap10,
                OutPutContainer(
                  containerWidth: double.infinity,
                  containerText: "alatheer123@gmail.com",
                ),
                Gaps.vGap10,
                Text("إلى"),
                CustomTextField(hintTextField: "alatheer123@gmail.com"),
                Text("عنوان الرسالة"),
                CustomTextField(hintTextField: "رسالة لطلب إجازة"),
                Text("نص الرسالة"),
                CustomTextField(
                    hintTextField: "رسالة لطلب إجازة", fieldLines: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
