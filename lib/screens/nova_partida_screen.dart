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
  final List<String> jugadorsEquipRoig = ['Pep', 'Tonet'];
  final List<String> jugadorsEquipBlau = ['Moltó', 'Verònica'];

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
                Text('Començarà amb $_jocsMinimNovaPartida jocs'),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('Jugadors Equip Roig'),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Afegir jugador',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        SizedBox(height: 10),
                        ...jugadorsEquipRoig
                            .map((jugador) => Text(jugador))
                            .toList(),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Jugadors Equip Blau'),
                        TextButton(
                          onPressed: () {},
                          child: Text('Afegir jugador'),
                        ),
                        SizedBox(height: 10),
                        ...jugadorsEquipBlau
                            .map((jugador) => Text(jugador))
                            .toList(),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
