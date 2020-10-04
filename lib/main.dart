import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:space_quest/home_page.dart';
import 'package:space_quest/begin_quest.dart';
import 'package:space_quest/application.dart';
import 'package:space_quest/localization/translations_delegate.dart';

Future<Null> main() {
  //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new LocalisedApp());
}


class LocalisedApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new LocalisedAppState();
  }
}

class LocalisedAppState extends State<LocalisedApp> {

  TranslationsDelegate _newLocaleDelegate;

  @override
  void initState() {
    super.initState();

    _newLocaleDelegate = TranslationsDelegate(newLocale: null);
    application.onLocaleChanged = onLocaleChange;
  }


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      /*routes:{
        "/": (context) =>HomePage(),
        "/start_game": (context) =>BeginQuest(),

      },*/
      localizationsDelegates: [
        _newLocaleDelegate,
        //provides localised strings
        GlobalMaterialLocalizations.delegate,
        //provides RTL support
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale("en", ""),
        const Locale("es", ""),
      ],
    );
  }

  void onLocaleChange(Locale locale) {
    setState(() {
      _newLocaleDelegate = TranslationsDelegate(newLocale: locale);
    });
  }
}