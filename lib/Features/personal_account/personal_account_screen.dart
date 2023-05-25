import 'package:animate_do/animate_do.dart';
import 'package:fingerPrint/Features/personal_account/widgets/personal_account_screen_body.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/widgets/custom_simple_app_bar.dart';
import 'package:flutter/material.dart';

class PersonalAccountScreen extends StatelessWidget {
  const PersonalAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    final screenSize = MediaQuery.of(context).size;

    return FadeInUp(
       duration: Duration(milliseconds: 300),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: screenSize * .07,
          child: CustomSimpleAppBar(
            appBarTitle: locale.translate('personal_account_view')!,
          ),
        ),
        body: const PersonalAccountScreenBody(),
      ),
    );
  }
}
