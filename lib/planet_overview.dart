import 'dart:math';

import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';
import 'package:space_quest/planet_end_page.dart';
import 'package:space_quest/planet_start_page.dart';
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

    switch(rng.nextInt(7)) {
      case 0: planet = new Planet.localized(translator, "mercury", "assets/images/18_mercury_new.png");
        break;
      case 1: planet = new Planet.localized(translator, "mars", "assets/images/19_mars.png");
        break;
      case 2: planet = new Planet.localized(translator, "saturn", "assets/images/28_saturn.png");
        break;
      case 3: planet = new Planet.localized(translator, "neptune", "assets/images/30_neptune.png");
        break;
      case 4: planet = new Planet.localized(translator, "jupiter", "assets/images/16_jupiter_new.png");
        break;
      case 5: planet = new Planet.localized(translator, "venus", "assets/images/27_venus_jg.png");
        break;
      case 6: planet = new Planet.localized(translator, "uranus", "assets/images/29_uranus.png");
        break;
      default: planet = new Planet.localized(translator, "mercury", "assets/images/18_mercury_new.png");
    }

    return Scaffold(
        body:
          Container(
              child: PageView(children: <Widget>[
                PlanetStartPage(planet: planet),
                PlanetCard(planet: planet),
                StatsList(planet: planet),
                PlanetEndPage(),
              ]))
        );
  }
}
