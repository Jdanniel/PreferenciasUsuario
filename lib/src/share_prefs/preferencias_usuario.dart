

import 'package:preferencias_usuario_app/src/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario{


  //Patron Singleton me ayudara a manejar una instancia unica de esta clase

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  //Contructor
  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  //GET y SET del Genero
  get genero{
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value){
    _prefs.setInt('genero', value);
  }

  //GET y SET del color Secundario
  get colorSecundario{
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value){
    _prefs.setBool('colorSecundario', value);
  }  

  //GET y SET del nombre Usuario
  get nombreUsuario{
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value){
    _prefs.setString('nombreUsuario', value);
  }  

   //GET y SET de la ultima pagina
  get ultimaPagina{
    return _prefs.getString('ultimaPagina') ?? HomePage.routeName;
  }

  set ultimaPagina(String value){
    _prefs.setString('ultimaPagina', value);
  }   
/*
  bool   _colorSecundario;
  int    _genero;
  String _nombre;
*/

}