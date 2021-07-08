import 'package:flutter/material.dart';

class TextMarcador extends StatelessWidget {
  final String text;
  final Color color;

  TextMarcador({@required this.text, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 80,
        fontFamily: 'Digital-7',
      ),
    );
  }
}
