/*import 'package:flutter/material.dart';
import 'package:space_quest/localization/translations.dart';
import 'planet.dart';

class PlanetCard extends StatelessWidget {

  final Planet planet;
  PlanetCard ({this.planet});

  Widget build(BuildContext context){
    var translator = Translations.of(context);
    return Card(
        margin: EdgeInsets.all(16.0),
        child: Container(
            padding: EdgeInsets.all(16.0),
            child:Column(
                children: <Widget>[
                  Text(
                      planet.name,
                      style:Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(height:6.0),//separador
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child:ClipRRect(
                        borderRadius: BorderRadius.circular(32.0),
                        child:Image.asset(planet.imgPath)
                    ),
                  ),
                  SizedBox(height:6.0),//separador
                  Text(
                      planet.overview,
                      style:Theme.of(context).textTheme.bodyText2,
                  ),
                  /*
                  RaisedButton.icon(
                      icon:Icon(Icons.search),
                      label: Text("10_things"/*translator.text("10_things")*/),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  elevation: 16,

                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                                    height: 400.0,
                                    width: 360.0,
                                    child: ListView(
                                        children: <Widget>[
                                        SizedBox(height: 20),
                                    Center(
                                      child: Text(
                                        //"${translator.text("10_things")} ${planet.name}",
                                        "10_things ${planet.name}",
                                        style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Column(
                                    children:planet.stats.map((stat) => StatCard(order:stat.order,name:stat.name,description:stat.description)).toList(),
                                    ),

                                    ]
                                  )
                                  )
                              );
                            }
                        );
                      }
                  ),
                  */
                ]
            )
        )
    );
  }
}


class StatsList extends StatelessWidget {
  final Planet planet;
  StatsList({this.planet});

  Widget build(BuildContext context) {
    var translator = Translations.of(context);
    return Container(
        padding: EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
        height: 400.0,
        width: 360.0,
        child: ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child:Center(
                  child: Text(
                    "${translator.text("10_things_about")} ${planet.name}",
                    //"10_things ${planet.name}",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: planet.stats.map((stat) =>
                    StatCard(order: stat.order,
                        name: stat.name,
                        description: stat.description)).toList(),
              ),

            ]
        )
    );
  }
}

class StatCard extends StatelessWidget {
  final int order;
  final String name;
  final String description;

  StatCard({this.order, this.name, this.description});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 12),
          Container(height: 2, color: Theme.of(context).primaryColor),
          SizedBox(height: 12),
          Column(
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                decoration: new BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(order.toString(), style: Theme
                      .of(context)
                      .textTheme
                      .bodyText1),
                ),
              ),

              SizedBox(width: 20.0),
              Text(name, style: TextStyle(fontSize: 20.0)),
              SizedBox(height: 12.0), //separador
              Text(description, style: TextStyle(fontSize: 16.0)),
            ],
          ),
        ],
      ),
    );
  }
}*/