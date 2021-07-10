import 'package:flutter/material.dart';

import 'package:numberpicker/numberpicker.dart';

import '../models/marcador.dart';
import '../widgets/text_marcador.dart';
import '../widgets/custom_drawer.dart';

class MarcadorScreen extends StatefulWidget {
  static const String routeName = '/marcador';

  @override
  _MarcadorScreenState createState() => _MarcadorScreenState();
}

class _MarcadorScreenState extends State<MarcadorScreen> {
  Marcador marcador = Marcador();
  int _jocsMaximNovaPartida = 60;

  Function inicialitzarMarcador() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Opcions de la nova partida"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  NumberPicker(
                      value: _jocsMaximNovaPartida,
                      minValue: 0,
                      maxValue: 100,
                      step: 5,
                      onChanged: (value) {
                        setState(() => _jocsMaximNovaPartida = value);
                      }),
                  Text('Partida a $_jocsMaximNovaPartida jocs'),
                ],
              )
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: new Text("Nova partida"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: new Text(
                "Tancar",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Marcador de Pilota',
        ),
      ),
      drawer: CustomDrawer(inicialitzarMarcador),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextMarcador(
                  text: marcador.getJocsMax,
                  color: Colors.amber,
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextMarcador(
                    text: marcador.getJocsRojosText,
                    color: Colors.red,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: TextMarcador(
                    text: marcador.getJocsBlausText,
                    color: Colors.blue,
                  ),
                  flex: 1,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      marcador.addQuinze(
                          marcador.equipRoig, marcador.equipBlau);
                      setState(() {});
                    },
                    child: TextMarcador(
                      text: marcador.getQuinzesRojosText,
                      color: Colors.red,
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      marcador.addQuinze(
                          marcador.equipBlau, marcador.equipRoig);
                      setState(() {});
                    },
                    child: TextMarcador(
                      text: marcador.getQuinzesBlausText,
                      color: Colors.blue,
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
