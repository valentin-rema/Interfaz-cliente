import 'package:flutter/cupertino.dart';

import 'dart:math' as math;


class Responsiva{

  final double ancho;
  final double alto;
  final double inch;

  const Responsiva({
    required this.ancho,
    required this.alto,
    required this.inch
  });

  factory Responsiva.of(BuildContext context){
    //entonces vamos a comenzar 
    final MediaQueryData data = MediaQuery.of(context);

    //ya que tenemos el context ahora vamos a intentar sacar las dimensiones
    final size = data.size;

    //sacamos el fondo 
    final fondo = math.sqrt(math.pow(size.width, 2)+ math.pow(size.height, 2));

    //ahora vamos a devolver los valores
    return Responsiva(ancho: size.width, alto: size.height, inch: fondo);
  }

  //vamos con los porcentajes
  double pancho(int porcentaje){
    //sacamos el porcentaje
    return this.ancho*(porcentaje/100);
  }

  double palto(int porcentaje){
    //sacamos el porcentaje
    return this.alto*(porcentaje/100);
  }

  double pfondo(int porcentaje){
    //sacamos el porcentaje
    return this.inch*(porcentaje/100);
  }

} 