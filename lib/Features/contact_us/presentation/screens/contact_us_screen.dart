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
        title: const Center(
          child: Text(
            "تواصل معنا",
            style: TextStyle(
                color: Colors.black, fontFamily: "Amiri", fontSize: 25),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * .8,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .3,
                'assets/images/mention_bro.png',
              ),
              const CustomTextField(
                  stringInTextField: "الاسم",
                  textInputType: TextInputType.text,
                  obscureText: false,
                  sizeOfTextField: 6),
              const CustomTextField(
                  stringInTextField: "البريد الإلكتروني ",
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  sizeOfTextField: 6),
              const CustomTextField(
                  stringInTextField: " عنوان الرسالة",
                  textInputType: TextInputType.text,
                  obscureText: false,
                  sizeOfTextField: 6),
              const CustomTextField(
                  stringInTextField: "الرسالة",
                  textInputType: TextInputType.text,
                  obscureText: false,
                  sizeOfTextField: 30),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                  buttonText: "ارسال",
                  buttonTapHandler: () {},
                  screenWidth: MediaQuery.of(context).size.width * .3),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
