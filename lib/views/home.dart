import 'package:flutter/material.dart';
import 'package:lista_compras/views/lista.page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => ListaPage(),
        //'/home': (context) => Home(),
      },
      initialRoute: '/',
    );
  }
}
