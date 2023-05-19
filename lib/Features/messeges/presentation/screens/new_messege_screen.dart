import 'package:fingerPrint/Features/dept_request/presentation/widgets/out_put_container.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/widgets/custom_app_bar.dart';
import 'package:fingerPrint/core/widgets/custom_login_text_field.dart';
import 'package:flutter/material.dart';

import '../../../auth/register/widgets/custom_text_field.dart';

class NewMessegeScreen extends StatelessWidget {
  const NewMessegeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: CustomAppBar(),
          preferredSize: MediaQuery.of(context).size * .1),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("من"),
                Gaps.vGap10,
                OutPutContainer(
                  containerWidth: double.infinity,
                  containerText: "alatheer123@gmail.com",
                ),
                Gaps.vGap10,
                Text("إلى"),
                CustomLoginTextField(
                    stringInTextField: "alatheer123@gmail.com",
                    obscureText: false,
                    textInputType: TextInputType.text,
                    width: double.infinity),
                Text("عنوان الرسالة"),
                CustomLoginTextField(
                    stringInTextField: "رسالة لطلب إجازة",
                    obscureText: false,
                    textInputType: TextInputType.text,
                    width: double.infinity),
                Text("نص الرسالة"),
                CustomLoginTextField(
                  stringInTextField: "رسالة لطلب إجازة",
                  textInputType: TextInputType.text,
                  obscureText: false,
                  height: 100,
                  width: double.infinity,
                  multiLine: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
