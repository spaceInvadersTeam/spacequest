import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';

class HelpPage extends StatelessWidget {
  final Translations translator;

  HelpPage({this.translator});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translator.text('help_page_title')),
      ),
      body: Container(
          padding: EdgeInsets.all(12.0),
          alignment: Alignment.center,
          child: Column(
              children: <Widget>[
              Container(
              height: 54.0,
              padding: EdgeInsets.all(12.0),
              child: Text(translator.text('help_text_1'),
              style: TextStyle(fontWeight: FontWeight.w700))),
      Text(translator.text('help_text_2')),
      ],
    ),
    ),
    );
  }



}