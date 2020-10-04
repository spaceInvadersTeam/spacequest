import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:space_quest/home_page.dart';
import 'package:space_quest/application.dart';
import 'package:space_quest/localization/translations_delegate.dart';

Future<Null> main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
        theme: ThemeData(
            // Define the default brightness and colors.
            //brightness: Brightness.dark,
            //primaryColor: Colors.lightBlue[800],
            //accentColor: Colors.cyan[600],

            // Define the default font family.
           // fontFamily: 'Georgia',

            // Define the default TextTheme. Use this to specify the default
            // text styling for headlines, titles, bodies of text, and more.
            textTheme: TextTheme(
                //headline1: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black26),
                headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black87),
                //bodyText1: TextStyle(fontSize: 20.0, color: Colors.teal),
                //bodyText2: TextStyle(fontSize: 16.0, color: Colors.teal),
            ),
        ),
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