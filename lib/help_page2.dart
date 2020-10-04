import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';

class HelpPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var translator = Translations.of(context);
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/FONDO3.png"),
                fit: BoxFit.fitWidth
              ),
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
                child : new RichText(
                    text:  new TextSpan(
                      style:  Theme.of(context).textTheme.bodyText1,
                      children: <TextSpan>[
                        new TextSpan( text: '1 ', style: const TextStyle(fontWeight: FontWeight.bold),),
                        new TextSpan( text: translator.text('help_text_2_1')),
                        new TextSpan( text: "\n"+"\n"),
                        new TextSpan( text: '2 ', style: const TextStyle(fontWeight: FontWeight.bold),),
                        new TextSpan( text: translator.text('help_text_2_2')),
                        new TextSpan( text: "\n"+"\n"),
                        new TextSpan( text: '3 ', style: const TextStyle(fontWeight: FontWeight.bold),),
                        new TextSpan( text: translator.text('help_text_2_3')),
                        new TextSpan( text: "\n"+"\n"),
                        new TextSpan( text: '4 ', style: const TextStyle(fontWeight: FontWeight.bold),),
                        new TextSpan( text: translator.text('help_text_2_4')),
                        //new TextSpan( text: "\n"+"\n"),
                      ]
                    )
                  )
                )
              )
            ),
          ],
        )
    );
  }



}