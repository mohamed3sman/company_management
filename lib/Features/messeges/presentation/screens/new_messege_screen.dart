import 'package:animate_do/animate_do.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/widgets/out_put_container.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/widgets/custom_app_bar.dart';
import 'package:fingerPrint/core/widgets/custom_login_text_field.dart';
import 'package:flutter/material.dart';

class NewMessegeScreen extends StatelessWidget {
  const NewMessegeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return FadeInUp(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: MediaQuery.of(context).size * .1,
            child: const CustomAppBar()),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(locale.translate('to')!,),
                  Gaps.vGap10,
                  OutPutContainer(
                    containerIconPath: "assets/icons/calender_icon.png",
                    containerTitle: "",
                    containerWidth: double.infinity,
                    containerText: "alatheer123@gmail.com",
                  ),
                  Gaps.vGap10,
                   Text(locale.translate('from')!,),
                  const CustomLoginTextField(
                      stringInTextField: "alatheer123@gmail.com",
                      obscureText: false,
                      textInputType: TextInputType.text,
                      width: double.infinity),
                   Text(locale.translate('title_of_message')!,),
                   CustomLoginTextField(
                      stringInTextField: locale.translate('leave_request_message')!,
                      obscureText: false,
                      textInputType: TextInputType.text,
                      width: double.infinity),
                  Text(locale.translate('message_text')!,),
                   CustomLoginTextField(
                    stringInTextField: locale.translate('leave_request_message')!,
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
      ),
    );
  }
}
