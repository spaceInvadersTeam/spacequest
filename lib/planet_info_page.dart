import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';
import 'planet.dart';

class PlanetCard extends StatelessWidget {
  final Planet planet;

  PlanetCard({this.planet});

  Widget build(BuildContext context) {
    var translator = Translations.of(context);
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/FONDO5.png"), fit: BoxFit.fitWidth),
        ),
      ),
      SingleChildScrollView(
          child: Column(children: <Widget>[
        /*Text(
          planet.name,
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(height: 6.0), //separador*/
        Container(
          padding: EdgeInsets.all(24.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(32.0),
              child: Image.asset(planet.imgPath)),
        ),
        SizedBox(height: 6.0), //separador
        Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Container(
              /* decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),*/
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(planet.overview,
                  style: Theme.of(context).textTheme.bodyText1),
            ))),
      ]))
    ]);
  }
}
