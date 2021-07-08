List<dynamic> _quinzesList = ['NET', 15, 30, 'VAL'];

class Marcador {
  int _jocsMax;
  List<int> _quinzes = [0, 0];
  List<int> _jocs = [4, 3];

  Marcador(this._jocsMax);

  void addQuinze(int equip) {
    // Si té VAL, fes joc i reseteja els quinzes
    // Si té 30 (2) i el rival VAL (3), fica a 2
    // Si no, fa quinze de forma normal (+1);
  }

  String get getQuinzesRojosText => _quinzesList[_quinzes[0]].toString();
  String get getQuinzesBlausText => _quinzesList[_quinzes[1]].toString();
  String get getJocsRojosText => (_jocs[0] * 5).toString();
  String get getJocsBlausText => (_jocs[1] * 5).toString();
  String get getJocsMax => _jocsMax.toString();
}
