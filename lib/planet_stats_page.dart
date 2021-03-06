import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_quest/localization/translations.dart';
import 'planet.dart';

class StatsList extends StatelessWidget {
  final Planet planet;

  StatsList({this.planet});

  Widget build(BuildContext context) {
    var translator = Translations.of(context);

    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/FONDO6.png"), fit: BoxFit.fitWidth),
        ),
      ),
        Container(
            padding: EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
            child: ListView(children: <Widget>[
              SizedBox(height: 20),
              Container(
                /*decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),*/
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: Text(
                    "${translator.text("10_things_about")} ${planet.name}",
                    textAlign: TextAlign.center,
                      style: GoogleFonts.raleway( textStyle:TextStyle(fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),)
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: planet.stats
                    .map((stat) => StatCard(
                        order: stat.order,
                        name: stat.name,
                        description: stat.description))
                    .toList(),
              ),
            ]))
      ]);
  }
}

class StatCard extends StatelessWidget {
  final int order;
  final String name;
  final String description;

  StatCard({this.order, this.name, this.description});

  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        /*decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),*/
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        //margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 12),
            Column(
              children: <Widget>[
                /*Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: new BoxDecoration(
                    color: Colors.pink,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(order.toString(),
                        style: GoogleFonts.raleway( textStyle:TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),)),
                  ),
                ),
*/
                SizedBox(width: 20.0),
                Text(name,  style: GoogleFonts.raleway( textStyle:TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),)),
                SizedBox(height: 12.0), //separador
                Text(description, style: GoogleFonts.raleway(
                  textStyle: TextStyle(fontSize: 18.0, color: Colors.white),)),

                SizedBox(height: 12),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 12),
    ]);
  }
}
