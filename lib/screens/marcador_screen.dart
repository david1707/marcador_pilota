import 'package:flutter/material.dart';

class MarcadorScreen extends StatelessWidget {
  static const String routeName = '/marcador';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Marcador de Pilota',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [Text('Partida a 60')],
            ),
            Row(
              children: [
                Text('35'),
                Text('55'),
              ],
            ),
            Row(
              children: [
                Text('VAL'),
                Text('NET'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
