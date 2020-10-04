import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';

class HelpPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var translator = Translations.of(context);
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/F3.png"),
     fit: BoxFit.fitWidth
    ) ,
    ),
    ),)
    ;
  }



}