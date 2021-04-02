import 'package:shared_preferences/shared_preferences.dart';


class PreferenciasUsuario {

  //implementamos el patron singleton
  
  static final PreferenciasUsuario _instancia = PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario._internal();
//la tengo aqui para poderla consumir despues
  SharedPreferences _prefs;

  //con esto ya tengo la instancia de mis preferencias que siempre sera la misma
  initPrefs() async{ 
   this._prefs = await SharedPreferences.getInstance();

  }

  //GET Y SETTER DEL GEL GENERO
  //
  get genero{
    //??esto quiere decir que si el valor es nulo me devuleva un uno 
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value){
    _prefs.setInt('genero', value);
  }

  //GET Y SETTER DEL color secundario
  
  get colorSecundario{
    //??esto quiere decir que si el valor es nulo me devuleva un uno 
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value){
    _prefs.setBool('colorSecundario', value);
  }

  
  //GET Y SETTER DEL NOMBRE USUARIO

  get nombreUsuario{
    //??esto quiere decir que si el valor es nulo me devuleva un uno 
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value){
    _prefs.setString('nombreUsuario', value);
  }

  //GET Y SETTER DEL NOMBRE USUARIO

  get ultimaPagina{
    //??esto quiere decir que si el valor es nulo me devuleva un uno 
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value){
    _prefs.setString('ultimaPagina', value);
  }


}