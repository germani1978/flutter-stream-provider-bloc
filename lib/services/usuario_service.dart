import 'dart:async';

import 'package:estados/models/usuario.dart';

class _UsuarioService {

  Usuario? _usuario;
  //StreamController<Usuario> _usuarioStreamController = StreamController<Usuario>();  solo un StreamBuilder puede escuchar 
  final StreamController<Usuario> _usuarioStreamController = StreamController<Usuario>.broadcast(); //  varios StreamBuilder puede escuchar
  Usuario? get usuario => _usuario;
  bool get existeUsuario => _usuario != null ? true : false;
  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;


  void cargarUsuario(Usuario user) {
    _usuario = user;
    _usuarioStreamController.add(_usuario!);
  } 
  
  void cambiarEdad(int edad) {
    if (_usuario != null) {
       _usuario!.edad = edad;
      _usuarioStreamController.add(_usuario!);
    }
  }

  dispose() {
    _usuarioStreamController.close();
  } 
}


final usuarioService = _UsuarioService();