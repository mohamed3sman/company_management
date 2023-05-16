import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        // leading: IconButton(
        //     // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
        //     icon: const FaIcon(FontAwesomeIcons.arr),
        //     color: Colors.black,
        //     onPressed: () {}),
        title: Text(
          locale.translate('contact_with_us')!,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .35,
              'assets/images/mention_bro.png',
            ),
            CustomTextField(
              stringInTextField: locale.translate('name')!,
              textInputType: TextInputType.text,
              obscureText: false,
            ),
            CustomTextField(
              stringInTextField: locale.translate('email')!,
              textInputType: TextInputType.emailAddress,
              obscureText: false,
            ),
            CustomTextField(
              stringInTextField: locale.translate('title_of_message')!,
              textInputType: TextInputType.text,
              obscureText: false,
            ),
            CustomTextField(
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
    );
  }
}
