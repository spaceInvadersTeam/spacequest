import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';
import 'package:space_quest/planet.dart';

class PlanetStartPage extends StatelessWidget {

  final Planet planet;

  PlanetStartPage({this.planet});

  @override
  Widget build(BuildContext context) {
    var translator = Translations.of(context);

    return Scaffold(
      body: new Stack(
          children: <Widget>[
          Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/FONDO9.png"),
                fit: BoxFit.fitWidth
              ) ,
            ),
          ),
          Positioned(

              top: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            child: Center (
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding:  EdgeInsets.fromLTRB(15, 15, 15, 15),
                width: MediaQuery.of(context).size.width * 0.9,
                child : new RichText(text:  new TextSpan(
                    style:  Theme.of(context).textTheme.bodyText1,
                  children: <TextSpan>[
                    new TextSpan( text: translator.text('start_text_1_1') +" "+planet.name+"!", style: const TextStyle(fontWeight: FontWeight.bold), ),
                    new TextSpan( text: "\n"+"\n"),
                    new TextSpan( text: translator.text('start_text_1_2')),
                    new TextSpan( text: "\n"+"\n"),
                    new TextSpan( text: translator.text('start_text_1_3')),
                    new TextSpan( text: "\n"),
                    new TextSpan( text: translator.text('start_text_1_4'), style: const TextStyle(fontWeight: FontWeight.bold), ),
                ])
                )
              )
            )
          ),
        ],
      )
    );
  }

}
