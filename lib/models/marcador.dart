import './equip.dart';

List<dynamic> _quinzesList = ['NET', 15, 30, 'VAL'];

class Marcador {
  int _jocsMax = 60;
  int _jocsMin = 0;
  Equip equipRoig = Equip();
  Equip equipBlau = Equip();

  Marcador(this._jocsMax);

  void addQuinze(Equip equipFaQuinze, Equip equipNoFaQuinze) {
    // Si equip = VAL, fes joc
    if (equipFaQuinze.getQuinzes == 3) {
      _addJoc(equipFaQuinze);
    }
    // Si és 30-VAL, deixar a dos
    else if (equipFaQuinze.getQuinzes == 2 && equipNoFaQuinze.getQuinzes == 3) {
      equipFaQuinze.setQuinzes = 2;
      equipNoFaQuinze.setQuinzes = 2;
    }
    // En cas contrari, deixar a 2
    else {
      equipFaQuinze.addQuinze();
    }
  }

  void _addJoc(Equip equip) {
    equipRoig.nouJoc();
    equipBlau.nouJoc();
    equip.addJoc();
  }

  void inicialitzar() {
    equipRoig.setJocs = _jocsMin;
    equipBlau.setJocs = _jocsMin;

    equipRoig.setQuinzes = 0;
    equipBlau.setQuinzes = 0;
  }

  String get getQuinzesRojosText =>
      _quinzesList[equipRoig.getQuinzes].toString();
  String get getQuinzesBlausText =>
      _quinzesList[equipBlau.getQuinzes].toString();

  String get getJocsRojosText => (equipRoig.getJocs * 5).toString();
  String get getJocsBlausText => (equipBlau.getJocs * 5).toString();

  String get getJocsMax => _jocsMax.toString();
  set setJocsMax(int numJocsMax) {
    _jocsMax = numJocsMax;
  }
}
