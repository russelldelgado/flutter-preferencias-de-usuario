import 'package:flutter/material.dart';
import 'package:perferencias/src/pages/setting_page.dart';
import 'package:perferencias/src/pages/sharedpreferences/preferencias_usuario.dart';
import 'package:perferencias/src/widgets/widgets_menu.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

    final prefs  = PreferenciasUsuario();


  @override
  Widget build(BuildContext context) {
        prefs.ultimaPagina = HomePage.routeName;

    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(
        title: Text('Preferencias De Usuario'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue ,
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('color secundario : ${prefs.colorSecundario}'),
          Divider(),
          Text('genero : ${prefs.genero}'),
          Divider(),
          Text('nombre usuario : ${prefs.nombreUsuario}'),
          Divider(),
        ],
      ),
    );
  }

}
