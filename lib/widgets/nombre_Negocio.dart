import 'package:flutter/material.dart';

class NombreNegocio extends StatelessWidget {

  final String negocio;

  const NombreNegocio(
    {
      required this.negocio
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Text(this.negocio, style: TextStyle(fontFamily: 'raleway', fontWeight: FontWeight.w800, fontSize: 18))
    );
  }
}