import 'package:flutter/material.dart';
import 'package:marcador_pilota/screens/nova_partida_screen.dart';

import '../models/marcador.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: null,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("assets/images/drawerheader.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Canviar màxim de jocs'),
            onTap: () {
              print('Canviar màxim de jocs');
            },
          ),
          ListTile(
            title: Text('Partida nova'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(NovaPartidaScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Seleccionar Mode'),
          ),
          ListTile(
            title: Text('Vore partides anteriors'),
          ),
        ],
      ),
    );
  }
}
