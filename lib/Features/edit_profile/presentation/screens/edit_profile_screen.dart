import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        // centerTitle: true,

        leading: IconButton(
            icon: const FaIcon(FontAwesomeIcons.arrowRight),
            color: Colors.black,
            onPressed: () {}),
        backgroundColor: Colors.white,
        title:  Center(
          child: Text(
            locale.translate('modify_the_account')!,
            style: const TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * .8,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              children: [
                 CustomTextField(
                    stringInTextField:locale.translate('name')!,
                    textInputType: TextInputType.text,
                    obscureText: false,
                  ),
                 CustomTextField(
                    stringInTextField: locale.translate('phone')!,
                    textInputType: TextInputType.phone,
                    obscureText: false,
                   ),
                 CustomTextField(
                    stringInTextField: locale.translate('id_number')!,
                    textInputType: TextInputType.number,
                    obscureText: false,
                  ),
                 CustomTextField(
                    stringInTextField:  locale.translate('email')!,
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
              ),
                 CustomTextField(
                    stringInTextField: locale.translate('password')!,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
              ),
                 CustomTextField(
                    stringInTextField: locale.translate('confirm_password')!,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                ),
                 const SizedBox(
                  height: 40,
                ),
                CustomButton(
                    buttonText:  locale.translate('confirm')!,
                    buttonTapHandler: () {},
                    screenWidth: MediaQuery.of(context).size.width * .6),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
