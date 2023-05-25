import 'package:animate_do/animate_do.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/widgets/custom_simple_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_login_text_field.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    final screenSize = MediaQuery.of(context).size;

    return ZoomIn(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: screenSize * .07,
          child: CustomSimpleAppBar(
            appBarTitle: locale.translate('contact_with_us')!,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Column(
              children: [
                Bounce(
                  child: Image.asset(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .3,
                    'assets/images/contact_us.png',
                  ),
                ),
                CustomLoginTextField(
                  stringInTextField: locale.translate('name')!,
                  textInputType: TextInputType.text,
                  obscureText: false,
                ),
                CustomLoginTextField(
                  stringInTextField: locale.translate('email')!,
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                CustomLoginTextField(
                  stringInTextField: locale.translate('title_of_message')!,
                  textInputType: TextInputType.text,
                  obscureText: false,
                ),
                CustomLoginTextField(
                  stringInTextField: locale.translate('message')!,
                  textInputType: TextInputType.text,
                  obscureText: false,
                  height: 100,
                ),
                Gaps.vGap16,
                CustomButton(
                  buttonText: "ارسال",
                  buttonTapHandler: () {},
                  screenWidth: MediaQuery.of(context).size.width * .6,
                ),
                Gaps.vGap40,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
