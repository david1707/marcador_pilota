import 'package:flutter/material.dart';

import './screens/marcador_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Marcador',
        theme: ThemeData(
          fontFamily: 'Digital-7',
          scaffoldBackgroundColor: Colors.black,
        ),
        initialRoute: MarcadorScreen.routeName,
        routes: {
          MarcadorScreen.routeName: (context) => MarcadorScreen(),
        });
  }
}
