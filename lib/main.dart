 
import 'package:flutter/material.dart';
import 'package:perferencias/src/pages/home_page.dart';
import 'package:flutter/widgets.dart';
import 'package:perferencias/src/pages/setting_page.dart';
import 'package:perferencias/src/pages/sharedpreferences/preferencias_usuario.dart';

void main()async {
WidgetsFlutterBinding.ensureInitialized ();
  final prefs  = PreferenciasUsuario();
  await prefs.initPrefs();

runApp(MyApp());

} 
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias' ,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName  : (BuildContext context) => HomePage(),
        SettinPage.routeName : (BuildContext context) => SettinPage(),
      },
    );
  }
}