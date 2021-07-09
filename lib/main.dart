import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/marcador_screen.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marcador',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: MarcadorScreen.routeName,
      routes: {
        MarcadorScreen.routeName: (context) => MarcadorScreen(),
      },
    );
  }
}
