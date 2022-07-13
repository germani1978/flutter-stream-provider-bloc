import 'package:estados/bloc/usuario_bloc.dart';
import 'package:estados/pages/page1_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pages/page2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: ((context) => UserBloc()))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'page1',
          routes: {
            'page1': (context) => Pagina1Page(),
            'page2': (context) => Pagina2Page(),
          },
        ),
    );
  }
}
