import 'package:flutter/material.dart';

import '../models/marcador.dart';
import '../widgets/text_marcador.dart';

class MarcadorScreen extends StatefulWidget {
  static const String routeName = '/marcador';

  @override
  _MarcadorScreenState createState() => _MarcadorScreenState();
}

class _MarcadorScreenState extends State<MarcadorScreen> {
  Marcador marcador = Marcador(60);

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
                    flex: 1),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextMarcador(
                    text: marcador.getQuinzesRojosText,
                    color: Colors.red,
                  ),
                  flex: 1,
                ),
                Expanded(
                    child: TextMarcador(
                      text: marcador.getQuinzesBlausText,
                      color: Colors.blue,
                    ),
                    flex: 1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
