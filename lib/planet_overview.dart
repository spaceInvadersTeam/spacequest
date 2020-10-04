import 'package:flutter/material.dart';
import 'package:space_quest/countdown_timer.dart';
import 'package:space_quest/localization/translations.dart';
import 'planet.dart';
import 'planet_card.dart';
import 'package:flutter/widgets.dart';

class PlanetOverview extends StatefulWidget {

  @override
  State<PlanetOverview> createState() {
    return PlanetOverviewState();
  }
}

class PlanetOverviewState extends State<PlanetOverview> {

  @override
  Widget build(BuildContext context) {

    var translator = Translations.of(context);
    Planet testPlanet =new Planet.localized(translator,"mercury","assets/images/mercury3.sp.jpg");

    return Scaffold(
        appBar: AppBar(
          title: Text('Space Quest'),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        backgroundColor: const Color(0xFFF1F1EF),
        body: /*PageView(
            children: <Widget>[
              PlanetCard(translator:translator,planet: testPlanet),
              StatsList(translator:translator,planet: testPlanet)
            ]),*/
          Column(
              children: <Widget>[
              Expanded( flex: 1, child:OtpTimer()),
              Expanded(
              flex: 10,
              child: PageView(
                  children: <Widget>[
                    PlanetCard(planet: testPlanet),
                    StatsList(planet: testPlanet)
                  ])
              )
          ]
          )
    );
  }
}