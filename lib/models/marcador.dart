List<dynamic> _quinzesList = ['NET', 15, 30, 'VAL'];

class Marcador {
  int _jocsMax;
  int _jocsMin;
  List<int> _quinzes = [0, 0];
  List<int> _jocs = [4, 3];

  Marcador(this._jocsMax);

  void addQuinze(int equip) {
    // Si equip = VAL, fes joc
    if (_quinzes[equip] == 3) {
      _addJoc(equip);
    }
    // Si és 30-VAL, deixar a dos
    else if ((equip == 0 && _quinzes[0] == 2 && _quinzes[1] == 3) ||
        (equip == 1 && _quinzes[0] == 3 && _quinzes[1] == 2)) {
      _quinzes = [2, 2];
    }
    // En cas contrari, deixar a 2
    else {
      _quinzes[equip]++;
    }
  }

  void _addJoc(int equip) {
    _quinzes = [0, 0];
    _jocs[equip]++;
  }

  void reset() {
    _quinzes = [0, 0];
    _jocs = [0, 0];
  }

  String get getQuinzesRojosText => _quinzesList[_quinzes[0]].toString();
  String get getQuinzesBlausText => _quinzesList[_quinzes[1]].toString();
  String get getJocsRojosText => (_jocs[0] * 5).toString();
  String get getJocsBlausText => (_jocs[1] * 5).toString();
  String get getJocsMax => _jocsMax.toString();
}
