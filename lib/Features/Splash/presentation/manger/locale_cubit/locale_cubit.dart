import 'package:bloc/bloc.dart';
import 'package:fingerPrint/Features/Splash/domain/usecases/change_locale_use_case.dart';
import 'package:fingerPrint/Features/Splash/domain/usecases/get_saved_lang_use_case.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart' show Locale;
import 'package:meta/meta.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  final ChangeLocaleUseCase changeLocaleUseCase;
  final GetSavedLangUseCase getSavedLangUseCase;

  LocaleCubit(
      {required this.changeLocaleUseCase, required this.getSavedLangUseCase})
      : super(const SelectedLocale(Locale('ar')));

  String langCode = english;

  Future<void> _changeLocale(String locale) async {
    changeLocaleUseCase.call(locale: locale);
    langCode = locale;
    emit(SelectedLocale(Locale(locale)));
  }

  void getSavedLang() async {
    langCode = await getSavedLangUseCase.call();
    emit(SelectedLocale(Locale(langCode)));
  }

  void toEnglish() => _changeLocale(english);
  void toArabic() => _changeLocale(arabic);
}
