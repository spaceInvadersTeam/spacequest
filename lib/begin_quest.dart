
import 'package:flutter/widgets.dart';
import 'package:space_quest/localization/translations.dart';

class BeginQuest extends StatefulWidget {

  final Translations translator;

  BeginQuest({this.translator});

  @override
  State<BeginQuest> createState() {
    return BeginQuestState();
  }

}

class BeginQuestState extends State<BeginQuest> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }

}