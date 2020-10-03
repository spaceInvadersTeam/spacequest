
import 'package:flutter/material.dart';

class Application {

  static final Application _application = Application._internal();


  final List<String> supportedLanguages = [
    "English",
    "Español"
  ];

  final List<String> supportedLanguagesCodes = [
    "en",
    "es",
  ];

  factory Application() {
    return _application;
  }

  Application._internal();

  //returns the list of supported Locales
  Iterable<Locale> supportedLocales() =>
    supportedLanguagesCodes.map<Locale>((language) => Locale(language, ""));

  LocaleChangeCallback onLocaleChanged;
}

Application application = Application();

typedef void LocaleChangeCallback(Locale locale);
