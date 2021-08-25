import 'package:aplicacion_clientes/responsiva/responsiva.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//vamos a comenzar
class BestNegocios extends StatefulWidget {

  final Responsiva dimensiones;
  final int indice;
  final String imagen;
  final String negocio;
  final Color color;

  const BestNegocios({
    required this.dimensiones,
    required this.indice,
    required this.imagen,
    required this.negocio,
    required this.color
  });

  @override
  _BestNegociosState createState() => _BestNegociosState();
}

class _BestNegociosState extends State<BestNegocios> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: widget.dimensiones.pfondo(2), top: 25, bottom: 25),
      width: widget.dimensiones.pancho(30),
      //height: dimensiones.pancho(20),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(right: 5, left: 5, top: 10),
                    //color: Colors.redAccent,
                    width: widget.dimensiones.pfondo(11),
                    height: widget.dimensiones.pfondo(11),
                    child: SvgPicture.asset(
                      widget.imagen,
                      fit: BoxFit.fitWidth,
                    )
                  //child: SvgPicture.asset(
                  //  this.widget.imagen,
                  //  fit: BoxFit.fitWidth,
                ),
                Text(widget.negocio, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontFamily: 'sans', fontWeight: FontWeight.w600), textAlign: TextAlign.center),
              ]
            )
      //ahora si señores vamos a colocar los negocios que me interesan
    );
  }
}