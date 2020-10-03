import 'package:flutter/material.dart';
import 'package:space_quest/help_page.dart';
import 'package:space_quest/localization/translations.dart';
import 'planet.dart';
import 'planet_card.dart';
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
    //Planet testPlanet =new Planet(index:1,name:"Mercurio",overview:"Mercurio es el planeta más pequeño de nuestro sistema solar. Simplemente, es un poco más grande que la Luna de la Tierra. Es el planeta más cercano al Sol, pero no es realmente el más cálido. Venus es el más cálido.",imgPath:"assets/mercury3.sp.jpg");
    Planet testPlanet =new Planet.localized(translator,"mercury","assets/images/mercury3.sp.jpg");

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
                child: PlanetCard(planet: testPlanet),
              ),
            ),
          ),
        ),

      ),
    );
  }
}