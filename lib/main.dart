//vamos a comenzar con el diseño de la pantalla de home asi que sin mas manos a la obra

import 'package:aplicacion_clientes/pages/home_page.dart';
import 'package:aplicacion_clientes/pages/negocio.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'negocios',
      routes: {
        'home' : (_) => HomePage(),
        'negocios': (_) => NegociosComida()
      },
    );
  }
}