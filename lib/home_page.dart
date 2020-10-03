import 'package:flutter/material.dart';
import 'package:space_quest/application.dart';
import 'package:space_quest/begin_quest.dart';
import 'package:space_quest/help_page.dart';
import 'package:space_quest/localization/translations.dart';

class  HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {

  String language = application.supportedLanguages[1];
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.indigo,
        primaryColorDark: Colors.indigo,
        accentColor: Colors.indigo,
      ),
      home: new Scaffold(
        backgroundColor: Colors.indigo,
        appBar: new AppBar(
          actions: <Widget>[
            getLanguageSelectionWidget()
          ],
        ),
        key: scaffoldKey,
        body: PageView(
            children: <Widget>[
              getMainPage(translator),
        HelpPage(translator: translator)
        ])
      ),
    );
  }

  getMainPage(Translations translator) {
    return new Stack(
        children: <Widget>[
          getBackground(),
          getHeader(translator),
          getBody(translator),
        ]
    );
  }

  getBackground() {
    return new Container(
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                Colors.indigo,
                Colors.lightBlue,
              ],
              begin: const FractionalOffset(1.0, 0.1),
              end: const FractionalOffset(1.0, 0.9)
          )
      ),
    );
  }
  
  getHeader(Translations translator) {
    return new Container(
      alignment: Alignment.center,
      margin: new EdgeInsets.only(top: 50),
      child: new Column(
        children: <Widget>[
          new Text("S P A C E\nQ U E S T",
              style: const TextStyle(
                fontSize: 55.0,
                color: Colors.pink,
                fontWeight: FontWeight.normal
            ),
          )
        ],
      ),
    );
  }

  getBody(Translations translator) {
    return new Positioned(
        bottom: 0.0,
        child: new Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          color: Color(0xECECECFF),
          child: new SingleChildScrollView(
            child: new Center(
              child: getButton(translator),
            ),
          ),
        )
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
      child: new Container(
        margin: new EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20
        ),
        height: 50,
        width: 180,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          gradient: new LinearGradient(
              colors: [
                Colors.pink,
                Colors.redAccent,
              ],
              begin: const FractionalOffset(1.0, 0.1),
              end: const FractionalOffset(1.0, 0.9)
          ),
        ),
        child: new Center(
          child: new Text(translator.text("start"),
            style: const TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.normal),),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  BeginQuest(
                    translator: translator,
                  )),
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