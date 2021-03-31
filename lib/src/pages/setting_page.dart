import 'package:flutter/material.dart';

class SettinPage extends StatelessWidget {
  static final String routeName = 'setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Preferencias'),),
      body: Center(child: Text('ajustes pagina'),)
    );
  }
}