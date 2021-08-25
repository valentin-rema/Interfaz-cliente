//vamos a comenzar con la parte del logo de negocio
import 'package:aplicacion_clientes/responsiva/responsiva.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoNegocio extends StatelessWidget {

  //cosas que vamos a necesitar
  final String camino;

  const LogoNegocio({
    required this.camino
  });

  @override
  Widget build(BuildContext context) {
    
    final dimensiones = Responsiva.of(context);

    return Container(
       margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
       width: dimensiones.pancho(33),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15),
         //color: Color(0xffFFC107)
       ),
       child: SvgPicture.asset(
         this.camino,
         fit: BoxFit.fitHeight
       ),
    );
  }
}

//vamos a comenzar a hacer la parte de los widgets de negocios de forma dinamica