// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina1'),
      ),
      body: StreamBuilder(
        stream: usuarioService.usuarioStream,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
          return  snapshot.hasData 
              ? InformacionUsuario(snapshot.data!)
              : Center(child: Text('No hay informacion del usuario'),);  
        },
      ),    
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility),
        onPressed:() => Navigator.pushNamed(context, 'page2')
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {

  final Usuario usuario;

  InformacionUsuario(this.usuario);
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ),),

          SizedBox(height: 15,),

          ListTile(title: Text('Nombre : ${usuario.name}')),
          ListTile(title: Text('Edad : ${usuario.edad}')),

          Text('Profesiones', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ),),

          Divider(),

          ListTile(title: Text('Profesion 1')),
          ListTile(title: Text('Profesion 2')),
          ListTile(title: Text('Profesion 3')),
        ],
      ),
    );
  }
}