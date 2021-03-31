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

  //ninguna de estas propiedades se usa ,  es solo como referencia para que sepamos que esto es lo que vamos a almacenar en esta clase
  //bool _colorSecundario ;
  //int _genero;
  //String _nombre ;

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

  //GET Y SETTER DEL NUMERO
  


  
  //GET Y SETTER DEL NOMBRE


}