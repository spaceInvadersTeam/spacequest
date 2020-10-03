import 'package:flutter/material.dart';
import 'planet.dart';

class PlanetCard extends StatelessWidget {

  final Planet planet;
  final Color textColor=Colors.teal;
  PlanetCard ({this.planet});

  Widget build(BuildContext context){
    return Card(
        margin: EdgeInsets.all(16.0),
        child: Container(
            padding: EdgeInsets.all(16.0),
            child:Column(
                children: <Widget>[
                  Text(
                      planet.name,
                      style:TextStyle(fontSize: 22.0,color: textColor )
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
                      style:TextStyle(fontSize: 16.0, color: textColor)
                  ),
                  RaisedButton.icon(
                      icon:Icon(Icons.search),
                      label: Text("Saber Mas"),
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
                                    child:Text(
                                        planet.overview,
                                        style:TextStyle(fontSize: 16.0, color: textColor)
                                    ),
                                  )
                              );
                            }
                        );
                      }
                  ),
                ]
            )
        )
    );
  }
}