
//vamos a comenzar con la construccion de la pagina para mostrar todos los negocios que 
//vamos a necesitar asi que sin mas manos a la obra

import 'package:aplicacion_clientes/responsiva/responsiva.dart';
import 'package:aplicacion_clientes/widgets/descripcion_negocio.dart';
import 'package:aplicacion_clientes/widgets/logo_negocios.dart';
import 'package:aplicacion_clientes/widgets/nombre_Negocio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NegociosComida extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final dimensiones = Responsiva.of(context);

    return Scaffold(
      //vamos a comenzar entonces 
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: dimensiones.ancho,
              height: dimensiones.pfondo(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                color: Color(0xffB39DDB)
              ),
              child: Center(
                child: Text('Calle Melchor Ocampo #104', style: TextStyle(color: Colors.white, fontFamily: 'raleway', fontWeight: FontWeight.w600, fontSize: 20), maxLines: 2, overflow: TextOverflow.ellipsis),
              ),
            ),
            SizedBox(height: dimensiones.pfondo(2)),
            Expanded(
              //vamos a comenzar a pintar los negocios que necesitamos
              child: ListView.separated(
                  itemBuilder: (_, index){
                    //vamos a comenzar
                    late String path;
                    late String nombre;
                    late String descripcion;
                    switch(index){
                      case 0:
                        path = 'assets/pizza.svg';
                        nombre = 'California Pizza';
                        descripcion = 'Pizzas';
                      break;
                      case 1:
                        path = 'assets/cerveza.svg';
                        nombre = 'Deposito EL VALE';
                        descripcion = 'Cervezas, Refresco, Sillas, Mesas';
                      break;
                      case 2:
                        path = 'assets/enchilada.svg';
                        nombre = 'Taqueria El Centro';
                        descripcion = 'Tacos Dorados y de Carne';
                      break;
                      case 3:
                        path = 'assets/tienda.svg';
                        nombre = 'Abarrotes Marpa';
                        descripcion = 'Tienda de abarrotes';
                      break;
                      case 4:
                        path = 'assets/tornillo.svg';
                        nombre = 'Ferreteria Flores';
                        descripcion = 'Ferreteria y algo mas';
                      break;
                    }
                    return Container(
                      width: dimensiones.ancho,
                      height: dimensiones.pfondo(16),
                      //color: Colors.redAccent,
                      child: Row(
                        //vamos a comenzar ingresando los datos
                        children: [
                          LogoNegocio(camino: path),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //vamos a comenzar a colocar las cosas
                                NombreNegocio(negocio: nombre),
                                DescripcionNegocio(descripcion: descripcion),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('35 - 45 min', style: TextStyle(fontFamily: 'sans', fontWeight: FontWeight.w500, fontSize: 15))
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  width: dimensiones.pancho(45),
                                  height: dimensiones.pfondo(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color(0xff9CCC65)
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: dimensiones.pancho(8),
                                        height: dimensiones.pfondo(3),
                                        //margin: EdgeInsets.only(top: 2, bottom: 2, left: 2),
                                        //color: Colors.redAccent,
                                        child: SvgPicture.asset(
                                          'assets/trofeo.svg',
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text('Buen Servicio', style: TextStyle(fontFamily: 'sans', fontWeight: FontWeight.w600, color: Colors.black54, fontSize: 15))
                                    ],
                                  )
                                ),
                              ],
                            )
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (_, index){
                    return Divider(
                      color: Colors.black45,
                      //height: 6,
                      thickness: 0.5,
                    );
                  },  
                  itemCount: 5
                )
            ),
          ],
        ),
      )  
    );
  }
}
