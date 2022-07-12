import 'package:estados/pages/page1_page.dart';
import 'package:flutter/material.dart';

import 'pages/page2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'page1',
      routes: {
        'page1':(context) => Pagina1Page(),
        'page2':(context) => Pagina2Page(),
      },
    );
  }
}