import 'package:flutter/material.dart';
import 'package:space_quest/application.dart';
import 'package:space_quest/help_page.dart';
import 'package:space_quest/localization/translations.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {

  String language = application.supportedLanguages[0];
  final scaffoldKey = new GlobalKey<ScaffoldState>();


  final Map<dynamic, dynamic> languagesMap = {
    application.supportedLanguages[0]: application.supportedLanguagesCodes[0],
    application.supportedLanguages[1]: application.supportedLanguagesCodes[1],
  };


  @override
  void initState() {
    super.initState();
    application.onLocaleChanged = onLocaleChange;
    onLocaleChange(Locale(languagesMap[language]));
  }

  @override
  Widget build(BuildContext context) {

    var translator = Translations.of(context);

    var image = new Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RaisedButton(
            child: Text(translator.text("help_button")),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        HelpPage(
                          translator: translator,
                        )),
              );
            }
        ),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.amber,
        primaryColorDark: Colors.amber,
        accentColor: Colors.amber,
      ),
      home: new Scaffold(
        backgroundColor: const Color(0xFFF1F1EF),
        appBar: new AppBar(
          title: Text(translator.text('title')),
          actions: <Widget>[
            getLanguageSelectionWidget()
          ],
        ),
        key: scaffoldKey,
        body: new Container(
          child: new SingleChildScrollView(
            child: new Center(
              child: image,
            ),
          ),
        ),
      ),
    );
  }

  // Returns the language selection widget
  getLanguageSelectionWidget() {
    return new
    PopupMenuButton<String>(
      // overflow menu
      onSelected: _select,
      icon: new Icon(Icons.language, color: Colors.teal),
      itemBuilder: (BuildContext context) {
        return application.supportedLanguages
            .map<PopupMenuItem<String>>((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }


  void onLocaleChange(Locale locale) async {
    setState(() {
      Translations.load(locale);
    });
  }

  void _select(String lang) {
    onLocaleChange(Locale(languagesMap[lang]));
    setState(() {
      language = lang;
    });
  }

}