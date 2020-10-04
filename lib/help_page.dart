import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_quest/localization/translations.dart';

class HelpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var translator = Translations.of(context);
    return Scaffold(
      body: new Stack(
          children: <Widget>[
          Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/F2.png"),
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
                    style:  GoogleFonts.raleway( textStyle: new TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                    )),
                  children: <TextSpan>[
                    new TextSpan( text: translator.text('help_text_1_1')),
                    new TextSpan( text: translator.text('help_text_1_2'), style: const TextStyle(fontWeight: FontWeight.bold), ),
                    new TextSpan( text: translator.text('help_text_1_3')),
                    new TextSpan( text: "\n"+"\n"),
                    new TextSpan( text: translator.text('help_text_1_4')),
                    new TextSpan( text: "\n"+"\n"),
                    new TextSpan( text: translator.text('help_text_1_5'), style: const TextStyle(fontWeight: FontWeight.bold), ),
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
