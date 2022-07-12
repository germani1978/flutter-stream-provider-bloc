// ignore_for_file: prefer_const_constructors

import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:StreamBuilder(
          stream: usuarioService.usuarioStream,
          builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
            return snapshot.hasData
              ? Text('Nombre : ${snapshot.data!.name}')              
              : Text('Pagina 2');
          },
        ),
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              child: Text('Establecer usuario', style: TextStyle(color: Colors.white)),
              onPressed: (() {

                final nuevoUsuario = Usuario(name: 'Fernando', edad: 35);

                usuarioService.cargarUsuario(nuevoUsuario);

              }),
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white)),
              onPressed: (() {
                usuarioService.cambiarEdad(40);
              }),
            ),
            MaterialButton(
              onPressed: (() {}),
              color: Colors.blue,
              child: Text('Agregar profesion', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),      
    );
  }
}