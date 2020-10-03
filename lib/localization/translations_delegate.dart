
import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';
import 'package:space_quest/application.dart';

class TranslationsDelegate extends LocalizationsDelegate<Translations> {

  final Locale newLocale;

  const TranslationsDelegate({this.newLocale});

  @override
  bool isSupported(Locale locale) {
    return application.supportedLanguagesCodes.contains(locale.languageCode);
  }

  @override
  Future<Translations> load(Locale locale) {
    return Translations.load(newLocale ?? locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate old) {
    return true;
  }}