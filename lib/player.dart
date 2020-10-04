
import 'dart:collection';

class Player {
  String name;
  Map<int, int> points;

  Player(String name) {
    this.name = name;

    points = new HashMap();
  }

   getTotalPoints() {
    return points.values.reduce((value, element) => value + element);
  }

  getPoints(String round) {
    return points[round];
  }

  addPoints(int round, int points) {
    this.points.update(round, (value) => value + points);
  }

}