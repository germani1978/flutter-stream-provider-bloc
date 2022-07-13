import 'package:estados/pages/page1_page.dart';
import 'package:estados/services/usuario_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/page2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (context) => UsuarioServices() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'page1',
        routes: {
          'page1':(context) => Pagina1Page(),
          'page2':(context) => Pagina2Page(),
        },
      ),
    );
  }
}