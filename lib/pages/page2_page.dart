// ignore_for_file: prefer_const_constructors

import 'package:estados/bloc/usuario_bloc.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final userBloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.existUser 
             ? Text(state.user!.name)
             : Text('Pagina 2');
          },
        ),
        // title: Text('Pagina2'),
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: (() {
                final user = Usuario(name: 'Pedro', edad: 100, profesiones: ['barbero','camionero']);
                userBloc.add(ActivarUser(user));
              }),
              color: Colors.blue,
              child: Text('Establecer usuario', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              onPressed: (() {
                userBloc.add(CambiarEdad(10));
              }),
              color: Colors.blue,
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              onPressed: (() {
                userBloc.add(AgregarProfesion('Full Stack'));
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