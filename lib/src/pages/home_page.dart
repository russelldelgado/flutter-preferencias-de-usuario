import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _crearMenu(),
      appBar: AppBar(title: Text('Preferencias De Usuario'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('color secundario'),
          Divider(),
          Text('genero'),
          Divider(),
          Text('nombre usuario'),
          Divider(),
        ],
      ),
    );
  }

  Drawer _crearMenu(){
    return Drawer(
      
    );
  }
}
