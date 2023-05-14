import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        leading: IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
            icon: const FaIcon(FontAwesomeIcons.arrowLeft),
            color: Colors.black,
            onPressed: () {}),
        title: Center(
          child: Text(
            locale.translate('english')!,
            style: const TextStyle(
                color: Colors.black, fontFamily: "Amiri", fontSize: 25),
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * .8,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .3,
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
                  height: 100),
              CustomButton(
                  buttonText: "ارسال",
                  buttonTapHandler: () {},
                  screenWidth: MediaQuery.of(context).size.width * .3),
              Gaps.vGap40,
            ],
          ),
        ),
      ),
    );
  }
}
