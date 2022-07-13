// ignore_for_file: prefer_const_constructors

import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  final userProvider = Provider.of<UsuarioServices>(context);

    return Scaffold(
      appBar: AppBar(
        title: userProvider.existeUsuario ? Text('${userProvider.usuario?.name}') : Text('Pagina2'),
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: (() {
                final userProvider = Provider.of<UsuarioServices>(context, listen: false);
                userProvider.usuario = Usuario(name: 'Germani', edad: 60, profesiones: ['Tornero','Carpintero']);
              }),
              color: Colors.blue,
              child: Text('Establecer usuario', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              onPressed: (() {
                  final userProvider = Provider.of<UsuarioServices>(context, listen: false);
                  userProvider.cambiarEdad(10);
              }),
              color: Colors.blue,
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white)),
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