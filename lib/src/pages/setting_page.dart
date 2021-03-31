import 'package:flutter/material.dart';
import 'package:perferencias/src/widgets/widgets_menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettinPage extends StatefulWidget {
  static final String routeName = 'setting';

  @override
  _SettinPageState createState() => _SettinPageState();
}

class _SettinPageState extends State<SettinPage> {
  //vamos a crear las porpiedades que almacenan el valor de las preferencias
  
  bool _colorSecundario = false;
  int _genero = 1;
  String _nombre = "pedro";
  //esto no se puede inincializar aqui por eso lo hacemos en el initstate mas abajo
  //TextEditingController _textController = TextEditingController(text: _nombre);
  TextEditingController _textController;

  //todos los statefull widgets tienen una parte en su ciclo de vida llamado init state
   
   @override
  void initState() {
    super.initState();
    _textController = new TextEditingController(text: _nombre);
    cargarPref();
  }

  //----------------------------------------------------METODOS------------------------------------------------------

  cargarPref()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _genero = prefs.getInt('genero');
    setState(() {
      
    });

  }

  _setSelectedRadio(int valor )async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('genero', valor)  ;

    _genero = valor;
    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(title: Text('Preferencias'),),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Setting' , style: TextStyle(fontSize: 45 , fontWeight: FontWeight.bold),),
            
          ),

          Divider(),

          SwitchListTile(
            value: _colorSecundario,
            title: Text('Color secundario'), 
            onChanged: (value) {
              setState(() {
              _colorSecundario = value;
                
              });
            },
            ),

            RadioListTile(
              value: 1, 
              title: Text('Masculino'),
              groupValue: _genero, 
              //no necesito pasarle ningun argumento porque en cuando lo declare asi ya pasara a la funcion el parametro que me devuelve el onchanged
              onChanged: _setSelectedRadio,
              
              ),

              RadioListTile(
              value: 2, 
              title: Text('Femenino'),
              groupValue: _genero, 
              onChanged:_setSelectedRadio,
              ),

              Divider(),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre de la persona usando el telefono'
                  ),
                  onChanged: (value) {
                    _nombre = value;
                  },
                ),
              )
        ],
      )
    );
  }
}