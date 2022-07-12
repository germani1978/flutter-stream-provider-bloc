// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina2'),
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: (() {}),
              color: Colors.blue,
              child: Text('Establecer usuario', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              onPressed: (() {}),
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