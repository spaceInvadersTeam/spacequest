


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Translations {
  Locale locale;
  static Map<dynamic, dynamic> _localisedValues;

  Translations(Locale locale) {
    this.locale = locale;
  }

  static Translations of(BuildContext context) {
    return Localizations.of(context, Translations);
  }

  static Future<Translations> load(Locale locale) async {
    Translations appTranslations = Translations(locale);

    String jsonContent = await rootBundle.loadString("assets/locale/${locale.languageCode}.json");
    _localisedValues = json.decode(jsonContent);

    return appTranslations;
  }

  get currentLanguage => locale.languageCode;
/*
  String text(String key) {
    return _localisedValues[key] ?? "$key not found";
  }
*/
  String text(String key,[String group]) {
    if (group==null)
      return _localisedValues[key] ?? "$key not found";
    else
      return _localisedValues[group][key] ?? "$group, $key not found";
  }
}