
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuarioServices with ChangeNotifier {

  Usuario? _usuario;

  Usuario? get usuario => _usuario;
  bool get existeUsuario => _usuario == null ? false : true;
  set usuario(Usuario? user ){
    _usuario = user;
    notifyListeners();
  }
  cambiarEdad(int edad) {
    _usuario?.edad = edad;
    notifyListeners();
  }

  removerUsuario() {
    _usuario = null;
    notifyListeners();
  }
  
}