import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_quest/localization/translations.dart';
import 'package:space_quest/planet.dart';
import 'package:space_quest/planet_overview.dart';

class PlanetEndPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var translator = Translations.of(context);

    return Scaffold(
      body: new Stack(
          children: <Widget>[
          Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/FONDO7.png"),
                fit: BoxFit.fitWidth
              ) ,
            ),
          ),
          Positioned(
              bottom: 50.0,
            //top: MediaQuery.of(context).size.height * 0.1,
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
                    new TextSpan( text: translator.text('end_text_1_1') ),
                    new TextSpan( text: "\n"+"\n"),
                    new TextSpan( text: translator.text('end_text_1_2')),
                    new TextSpan( text: "\n"+"\n"),
                    new TextSpan( text: translator.text('end_text_1_3'), style: const TextStyle(fontWeight: FontWeight.bold), ),
                ])
                )
              )
            )
          ),
                Positioned(
                  bottom: 20.0,
              child: Center (
              child: MaterialButton(
                    //padding: EdgeInsets.all(10.0),
                    textColor: Colors.white,
                    //splashColor: Colors.greenAccent,
                    elevation: 8.0,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/button.png'),
                            fit: BoxFit.fill),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(translator.text('end_text_1_4'),style: GoogleFonts.raleway(
                          textStyle: new TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
                          )),
                      ),
                    ),
                    // ),
                    onPressed: () {
                      //print('Tapped');
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                          builder: (context) =>
                      //GamePage1()),
                      PlanetOverview()));
                    },
                  ),
                ),
                )
        ],
      )
    );
  }

}
