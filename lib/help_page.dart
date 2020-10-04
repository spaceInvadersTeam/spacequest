import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';

class HelpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var translator = Translations.of(context);
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/fondo_2_slide.png"),
              fit: BoxFit.fitWidth
            ) ,
        ),
        child:Center(
          child: Text(
            translator.text("help_text_1"),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

}