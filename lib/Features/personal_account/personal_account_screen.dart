import 'package:fingerPrint/Features/personal_account/widgets/personal_account_screen_body.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonalAccountScreen extends StatelessWidget {
  const PersonalAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                FontAwesomeIcons.arrowLeftLong,
                color: Colors.black,
              ),
            ),
          ),
        ],
        title: Text(
          locale.translate('personal_account_view')!,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12.sp),
        ),
      ),
      body: const PersonalAccountScreenBody(),
    );
  }
}
