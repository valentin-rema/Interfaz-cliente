import 'package:aplicacion_clientes/responsiva/responsiva.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuOpcion extends StatelessWidget {
  //vamos a colocar lo que necesitamos
  final String imagen;
  final Color color;
  final Responsiva dimensiones;
  final Color icono;

  const MenuOpcion({
    required this.imagen,
    required this.color,
    required this.dimensiones,
    this.icono = Colors.transparent
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: this.dimensiones.pancho(25),
      height: this.dimensiones.pancho(25),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
        margin: EdgeInsets.all(10),
        //color: Colors.white,
        child: ( icono == Colors.transparent)
                ? SvgPicture.asset(
                    this.imagen,
                    fit: BoxFit.cover,
                  )
                : SvgPicture.asset(
                    this.imagen,
                    fit: BoxFit.cover,
                    color: this.icono
                  )
      )
  );
  }
}