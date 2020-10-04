class Game {

  int rounds;
  int time;
  List<String> players;

  int currentRound = 0;

  Game(int rounds, int time) {
    this.rounds = rounds;
    this.time = time;
    players = new List();
  }

  setPlaters(List<String> players) {
    players = players;
    return true;
  }



}

