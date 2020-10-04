import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';
import 'planet_overview.dart';
import 'package:flutter/widgets.dart';

class BeginQuest extends StatefulWidget {

  final Translations translator;

  BeginQuest({this.translator});

  @override
  State<BeginQuest> createState() {
    return BeginQuestState();
  }

}

class BeginQuestState extends State<BeginQuest> {

  @override
  Widget build(BuildContext context) {

    var translator = Translations.of(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.amber,
        primaryColorDark: Colors.amber,
        accentColor: Colors.amber,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Space Quest'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        backgroundColor: const Color(0xFFF1F1EF),
        body: new Container(
          child: new SingleChildScrollView(
            child: new Center(
              child: Container(
                color: Colors.grey,
                child:  PlanetOverview(),
              ),
            ),
          ),
        ),

      ),
    );
  }
}