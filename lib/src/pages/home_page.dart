import 'package:flutter/material.dart';
import 'package:perferencias/src/pages/setting_page.dart';
import 'package:perferencias/src/pages/sharedpreferences/preferencias_usuario.dart';
import 'package:perferencias/src/widgets/widgets_menu.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

    final prefs  = PreferenciasUsuario();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(title: Text('Preferencias De Usuario'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('color secundario'),
          Divider(),
          Text('genero : ${prefs.genero}'),
          Divider(),
          Text('nombre usuario'),
          Divider(),
        ],
      ),
    );
  }

}
