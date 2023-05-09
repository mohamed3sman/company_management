import 'package:fingerPrint/Features/Splash/presentation/manger/locale_cubit/locale_cubit.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/commons.dart';
import 'package:fingerPrint/core/utils/gaps.dart';
import 'package:fingerPrint/core/utils/text_Form_field.dart';
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
  final _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    locale = AppLocalizations.of(context)!;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.grey.withOpacity(0.2), width: 1),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)),
              padding: const EdgeInsets.all(6),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "S.of(context).please_enter_your_name";
                  }
                  return null;
                },
                controller: _phoneNumberController,
                decoration: const InputDecoration(
                  label: Text("daad"),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  // prefixIcon: Container(
                  //     padding: const EdgeInsets.symmetric(vertical: 14),
                  //     child: Icon(Icons.abc)),
                ),
              ),
            ),
            Row(
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
          ],
        ),
      ),
    );
  }
}
