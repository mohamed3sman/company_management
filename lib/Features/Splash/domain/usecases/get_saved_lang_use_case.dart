import 'package:fingerPrint/Features/Splash/domain/repositories/language_repository.dart';

class GetSavedLangUseCase {
  final LanguageRepository languageRepository;
  GetSavedLangUseCase({required this.languageRepository});

  Future<String> call() async => await languageRepository.getSavedLang();
}
