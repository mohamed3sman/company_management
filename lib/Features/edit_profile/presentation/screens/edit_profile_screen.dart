import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/widgets/custom_login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/widgets/custom_button.dart';

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
        centerTitle: true,
        leading: IconButton(
            icon: const FaIcon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.white,
        title: Center(
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
                CustomLoginTextField(
                  stringInTextField: locale.translate('name')!,
                  textInputType: TextInputType.text,
                  obscureText: false,
                ),
                CustomLoginTextField(
                  stringInTextField: locale.translate('phone')!,
                  textInputType: TextInputType.phone,
                  obscureText: false,
                ),
                CustomLoginTextField(
                  stringInTextField: locale.translate('id_number')!,
                  textInputType: TextInputType.number,
                  obscureText: false,
                ),
                CustomLoginTextField(
                  stringInTextField: locale.translate('email')!,
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                CustomLoginTextField(
                  stringInTextField: locale.translate('password')!,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                CustomLoginTextField(
                  stringInTextField: locale.translate('confirm_password')!,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                Gaps.vGap40,
                CustomButton(
                    buttonText: locale.translate('confirm')!,
                    buttonTapHandler: () {},
                    screenWidth: MediaQuery.of(context).size.width * .6),
                Gaps.vGap40,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
