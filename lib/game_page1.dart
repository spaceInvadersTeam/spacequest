
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:space_quest/game.dart';
import 'package:space_quest/game_page2.dart';
import 'package:space_quest/localization/translations.dart';

class GamePage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new GamePageState1();
  }
}

class GamePageState1 extends State<GamePage1> {

  List<String> _players = new List();

  TextEditingController roundsController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var translator = Translations.of(context);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:  getGamePageOne(translator),
    );
  }

  getGamePageOne(Translations translator) {
     return new Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/F8.png"),
                    fit: BoxFit.fill
                ) ,
              ),
            ),
            Container (
                padding: EdgeInsets.only(top: 35, left: 20),
                child: Column (
                    children: <Widget>[
                        Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Container(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/NOMBRE_JUGADOR.png")
                              )
                            ),
                              child : TextField (
                                controller: roundsController,
                                style: Theme.of(context).textTheme.bodyText1,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: translator.text("rounds")
                              ),
                      )
                    ),
                  ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Container(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/NOMBRE_JUGADOR.png")
                                )
                            ),
                            child : TextField (
                              controller: timeController,
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: translator.text("roundtime")
                              ),
                            )
                        ),
                      ),
                    ]
                ),
            ),
            getNextButton(),
        ],
    );
  }

  getNextButton() {
      return new Positioned(
        bottom: 20,
        right: MediaQuery.of(context).size.width * 0.1,
        child: Center(
          child: new InkWell(
            child: new Image.asset("assets/images/Recurso_26.png", scale: 3.5,),
            onTap: validateAndNext,
          ),
        ),
      );
  }

  validateAndNext() {
    if (roundsController.text.isNotEmpty && timeController.text.isNotEmpty) {
      int rounds = int.parse(roundsController.text);
      int time = int.parse(timeController.text);

      Game game = Game(rounds, time);
      // Navigator.pushNamed(context, 'start_game');
      Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) =>
          GamePage2(game)),
      );
    }
  }

}

