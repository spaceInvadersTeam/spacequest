
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_quest/game.dart';
import 'package:space_quest/localization/translations.dart';

class GamePage2 extends StatefulWidget {

  final Game game;

  GamePage2(this.game);

  @override
  State<StatefulWidget> createState() {
    return new GamePageState2(game);
  }
}

class GamePageState2 extends State<GamePage2> {

  final Game game;

  List<String> _players = new List();

  TextEditingController _textController1 = TextEditingController();
  TextEditingController _textController2 = TextEditingController();
  TextEditingController _textController3 = TextEditingController();
  TextEditingController _textController4 = TextEditingController();
  TextEditingController _textController5 = TextEditingController();
  TextEditingController _textController6 = TextEditingController();

  GamePageState2(this.game);

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
                                controller: _textController1,
                                style: Theme.of(context).textTheme.bodyText1,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: translator.text("player_name")
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
                              controller: _textController2,
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: translator.text("player_name")
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
                              controller: _textController3,
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: translator.text("player_name")
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
                              controller: _textController4,
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: translator.text("player_name")
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
                              controller: _textController5,
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: translator.text("player_name")
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
                              controller: _textController6,
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: translator.text("player_name")
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
    if (_textController1.text.isNotEmpty && _textController2.text.isNotEmpty) {
      _players.add(_textController1.text);
      _players.add(_textController2.text);
      if (_textController3.text.isNotEmpty) {
        _players.add(_textController3.text);
      }
      if (_textController4.text.isNotEmpty) {
        _players.add(_textController3.text);
      }
      if (_textController5.text.isNotEmpty) {
        _players.add(_textController3.text);
      }
      if (_textController6.text.isNotEmpty) {
        _players.add(_textController3.text);
      }

      game.setPlaters(_players);

      // Navigator.pushNamed(context, 'start_game');
     /* Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
              GamePage2(game)), next page
      );

      */
    }
  }

}

