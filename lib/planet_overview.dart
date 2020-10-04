import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_quest/countdown_timer.dart';
import 'package:space_quest/localization/translations.dart';
import 'planet.dart';
import 'planet_stats_page.dart';
import 'planet_info_page.dart';
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
    Planet planet =null;
    //get a random planet
    var rng = new Random();

    switch(rng.nextInt(4)) {
      case 0: planet = new Planet.localized(translator, "mercury", "assets/images/mercury3.sp.jpg");
        break;
      case 1: planet = new Planet.localized(translator, "mars", "assets/images/mars1.sp.jpg");
        break;
      case 2: planet = new Planet.localized(translator, "saturn", "assets/images/saturn2.sp.jpg");
        break;
      case 3: planet = new Planet.localized(translator, "neptune", "assets/images/neptune3.sp.jpg");
        break;
      default:
        planet = new Planet.localized(translator, "mercury", "assets/images/mercury3.sp.jpg");
    }

    return Scaffold(
        /*appBar: AppBar(
          title: Text(
            planet.name,
            style: GoogleFonts.raleway(
              textStyle: new TextStyle(fontSize: 20.0, color: Colors.white,),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),*/
        backgroundColor: const Color(0xFFF1F1EF),
        body:
            /*PageView(
            children: <Widget>[
              PlanetCard(translator:translator,planet: testPlanet),
              StatsList(translator:translator,planet: testPlanet)
            ]),*/
            Column(children: <Widget>[
         // Expanded( flex: 1,     //OtpTimer()               )),
          Expanded(
              flex: 10,
              child: PageView(children: <Widget>[
                PlanetCard(planet: planet),
                StatsList(planet: planet)
              ]))
        ]));
  }
}
