class Equip {
  final List<String> _jugadors = [];
  int _quinzes = 0;
  int _jocs = 0;

  void reset() {
    _quinzes = 0;
    _jocs = 0;
  }

  void nouJoc() {
    _quinzes = 0;
  }

  void addQuinze() {
    _quinzes++;
  }

  void addJoc() {
    _jocs++;
  }

  void addJugadors(List<String> jugadors) {
    jugadors.map((jugador) => _jugadors.add(jugador));
  }

  int get getJocs => _jocs;
  set setJocs(int numJocs) {
    _jocs = numJocs;
  }
  set setQuinzes(int numQuinzes) {
    _quinzes = numQuinzes;
  }
  int get getQuinzes => _quinzes;

}
