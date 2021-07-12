import 'package:flutter/material.dart';

import 'package:numberpicker/numberpicker.dart';

class NovaPartidaScreen extends StatefulWidget {
  static const String routeName = '/nova-partida';

  @override
  _NovaPartidaScreenState createState() => _NovaPartidaScreenState();
}

class _NovaPartidaScreenState extends State<NovaPartidaScreen> {
  int _jocsMinimNovaPartida = 15;
  int _jocsMaximNovaPartida = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Nova partida',
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Opcions de la nova partida"),
                SizedBox(height: 20),
                NumberPicker(
                    value: _jocsMaximNovaPartida,
                    minValue: 0,
                    maxValue: 100,
                    step: 5,
                    onChanged: (value) {
                      setState(() {
                        _jocsMaximNovaPartida = value;
                        _jocsMaximNovaPartida < _jocsMinimNovaPartida
                            ? _jocsMinimNovaPartida = _jocsMaximNovaPartida
                            : null;
                      });
                    }),
                Text('Partida a $_jocsMaximNovaPartida jocs'),
                SizedBox(height: 20),
                NumberPicker(
                    value: _jocsMinimNovaPartida,
                    minValue: 0,
                    maxValue: _jocsMaximNovaPartida,
                    step: 5,
                    onChanged: (value) {
                      setState(() => _jocsMinimNovaPartida = value);
                    }),
                Text('Començarà des de $_jocsMinimNovaPartida jocs'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
