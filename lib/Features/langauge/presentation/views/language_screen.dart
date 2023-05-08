import 'package:fingerPrint/Features/Splash/presentation/manger/locale_cubit/locale_cubit.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/commons.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  late AppLocalizations locale;

  @override
  Widget build(BuildContext context) {
    locale = AppLocalizations.of(context)!;

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Commons.showToast(context,
                      message: locale.translate('english')!);

                  BlocProvider.of<LocaleCubit>(context).toEnglish();
                },
                child: Text(locale.translate('english')!)),
            Gaps.hGap30,
            GestureDetector(
                onTap: () {
                  Commons.showToast(context,
                      message: locale.translate('arabic')!);
                  BlocProvider.of<LocaleCubit>(context).toArabic();
                },
                child: Text(locale.translate('arabic')!))
          ],
        ),
      ),
    );
  }
}
