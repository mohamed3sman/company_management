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
        title: const Center(
          child: Text(
            "تعديل الحساب",
            style: TextStyle(color: Colors.black, fontSize: 20),
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
                const CustomTextField(
                    stringInTextField: "الاسم",
                    textInputType: TextInputType.text,
                    obscureText: false,
                    sizeOfTextField: 10),
                const CustomTextField(
                    stringInTextField: "رقم الجوال ",
                    textInputType: TextInputType.phone,
                    obscureText: false,
                    sizeOfTextField: 10),
                const CustomTextField(
                    stringInTextField: "رقم الهوية",
                    textInputType: TextInputType.number,
                    obscureText: false,
                    sizeOfTextField: 10),
                const CustomTextField(
                    stringInTextField: "البريد الإلكتروني",
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    sizeOfTextField: 10),
                const CustomTextField(
                    stringInTextField: " كلمة المرور ",
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    sizeOfTextField: 10),
                const CustomTextField(
                    stringInTextField: "تأكيد كلمة المرور",
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    sizeOfTextField: 10),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(
                    buttonText: "تأكيد",
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
