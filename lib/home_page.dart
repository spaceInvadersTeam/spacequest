import 'package:flutter/material.dart';
import 'package:space_quest/application.dart';
import 'package:space_quest/begin_quest.dart';
import 'package:space_quest/planet_overview.dart';
import 'package:space_quest/help_page.dart';
import 'package:space_quest/localization/help_page2.dart';
import 'package:space_quest/localization/translations.dart';

class  HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {

  String language = application.supportedLanguages[1];

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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: PageView(
            children: <Widget>[
              getMainPage(translator),
              HelpPage(translator: translator),
              HelpPage2(translator: translator)
        ])
      ),
    );
  }

  getMainPage(Translations translator) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: new AppBar(
        actions: <Widget>[
        getLanguageSelectionWidget()
      ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
    ),
    body: new Stack(
        children: <Widget>[
          getBackground(),
          getLogo(),
          getStartButton(translator),
        ]
    )
    );
  }

  getLanguage() {
    {
      return new PopupMenuButton<String>(
        // overflow menu
        onSelected: _select,
        icon: new Icon(Icons.language, color: Colors.pink),
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
  }

  getBackground() {
    return new Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/fondo_1.jpeg"),
            fit: BoxFit.fill
        ) ,
      ),
    );
  }
  
  getLogo() {
    return new
    Positioned(
        top: 60,
        width: MediaQuery.of(context).size.width,
        child: Center (
          child: Image.asset("assets/images/logo.png", scale: 2.5,),
        )
    );
  }

  getStartButton(Translations translator) {
    return new Positioned(
        bottom: 125,
        width: MediaQuery.of(context).size.width,
        child: Center(
             child: getButton(translator),
        ),
    );
  }
  // Returns the language selection widget
  getLanguageSelectionWidget() {
    return new PopupMenuButton<String>(
      // overflow menu
      onSelected: _select,
      icon: new Icon(Icons.language, color: Colors.pink),
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

  
  getButton(Translations translator) {
    return new InkWell(
      child: new Image.asset("assets/images/Recurso_8.png", scale: 3.5,),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  PlanetOverview()),
        );
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