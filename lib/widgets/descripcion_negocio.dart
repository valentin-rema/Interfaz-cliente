import 'package:flutter/material.dart';

class DescripcionNegocio extends StatelessWidget {

  final String descripcion;

  const DescripcionNegocio({
    required this.descripcion
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Text(this.descripcion, style: TextStyle(fontFamily: 'sans', fontWeight: FontWeight.w500, fontSize: 15))
    );
  }
}