import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';

class HelpPage extends StatelessWidget {
  final Translations translator;

  HelpPage({this.translator});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/F2.png"),
     fit: BoxFit.fitWidth
    ) ,
    ),
    ),)
    ;
  }



}