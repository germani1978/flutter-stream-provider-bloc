// ignore_for_file: prefer_const_constructors

import 'package:estados/cubit/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final userCubit = BlocProvider.of<UsuarioCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina2'),
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: (() {
                userCubit.selecionarUsuario(Usuario(name: 'Germani', edad: 14, profesiones: ['tornero','barbero']));
              }),
              color: Colors.blue,
              child: Text('Establecer usuario', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              onPressed: (() {
                userCubit.cambiarEdad(10);
              }),
              color: Colors.blue,
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              onPressed: (() {
                userCubit.agregarProfesion('Full Stact');
              }),
              color: Colors.blue,
              child: Text('Agregar profesion', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),      
    );
  }
}