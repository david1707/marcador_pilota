import 'package:flutter/material.dart';

import '../widgets/text_marcador.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextMarcador(
                  text: '60',
                  color: Colors.amber,
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextMarcador(
                    text: '40',
                    color: Colors.red,
                  ),
                  flex: 1,
                ),
                Expanded(
                    child: TextMarcador(text: '55', color: Colors.blue),
                    flex: 1),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextMarcador(
                    text: 'VAL',
                    color: Colors.red,
                  ),
                  flex: 1,
                ),
                Expanded(
                    child: TextMarcador(text: 'NET', color: Colors.blue),
                    flex: 1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
