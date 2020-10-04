import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';
import 'planet_overview.dart';
import 'package:flutter/widgets.dart';

class BeginQuest extends StatefulWidget {

  BeginQuest();

  @override
  State<BeginQuest> createState() {
    return BeginQuestState();
  }

}

class BeginQuestState extends State<BeginQuest> {

  @override
  Widget build(BuildContext context) {

    var translator = Translations.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Space Quest'),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
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

    );
  }
}