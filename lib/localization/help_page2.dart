import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';

class HelpPage2 extends StatelessWidget {
  final Translations translator;

  HelpPage2({this.translator});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fondo_3_slide.png"),
     fit: BoxFit.fitWidth
    ) ,
    ),
    ),)
    ;
  }



}