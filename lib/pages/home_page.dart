//vamos a comenzar con la parte del page
import 'package:aplicacion_clientes/pages/buscar_page.dart';
import 'package:aplicacion_clientes/pages/perfil_page.dart';
import 'package:aplicacion_clientes/pages/soporte_page.dart';
import 'package:aplicacion_clientes/responsiva/responsiva.dart';
import 'package:aplicacion_clientes/widgets/best_negocios.dart';
import 'package:aplicacion_clientes/widgets/menu_home.dart';
import 'package:flutter/material.dart';


//vamos a definir una lista de widgets statica


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //vamos a colocar la lista de widgets
  static final List<Widget> _paginas = [
    //vamos a colocar nuestras paginas
    _WidgetInicio(),
    BuscarPage(),
    SoportePage(),
    PerfilPage()
  ];

  static final  labelSelect = TextStyle(fontFamily: 'raleway', fontWeight: FontWeight.w500,fontSize: 17);

  static final iconSelect = IconThemeData(size: 30);

  static final  labelUnSelect = TextStyle(fontFamily: 'raleway', fontWeight: FontWeight.w500,fontSize: 17);

  static final iconUnSelect = IconThemeData(size: 30);
  //vamos a colocar el indice de las paginas por default en cero
  int _indicePagina = 0;


  //vamos a definir un metodo para ir cambiando el indice de nuestra lista de widgets
  void cambiandoIndex(int indice){
    setState(() {
      _indicePagina = indice;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _paginas.elementAt(_indicePagina),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
            backgroundColor: Color(0xff9CCC65)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headphones_outlined),
            label: 'Soporte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          )
        ],
        currentIndex: _indicePagina,
        selectedItemColor: Colors.white,
        onTap: cambiandoIndex,
        unselectedItemColor: Colors.black26,
        showUnselectedLabels: true,
        selectedLabelStyle: labelSelect,
        unselectedLabelStyle: labelUnSelect,
        selectedIconTheme: iconSelect,
        unselectedIconTheme: iconUnSelect,
      ),
    );
  }
}

class _WidgetInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final dimensiones = Responsiva.of(context);

    late String path, negocio;
    
    late Color color;

    return SafeArea(
      child: Container(
        width: dimensiones.ancho,
        height: dimensiones.alto,
        //color: Colors.red,
        child: Stack(
              children: [
                //vamoos a comenza con poner algo hasta la parte de arriba
                Container(
                  width: double.infinity,
                  height: dimensiones.palto(8),
                  color: Color(0xffE8EAF6),
                  child: Row(
                    children: [
                      Icon(Icons.place),
                      Text('Melchor Ocampo #104', style: TextStyle(fontFamily: 'raleway', fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Positioned(
                  top: dimensiones.pfondo(11),
                  height: dimensiones.alto,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    //ahorita vamos a regresar
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        width: dimensiones.pancho(90),
                        height: dimensiones.pfondo(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.1 ,
                              color: Colors.black45,
                              offset: Offset(0.0, 0.7),
                              spreadRadius: 2.0
                            )
                          ]
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10.0),
                            Text('¿Que quieres hoy', style: TextStyle(fontFamily: 'sans', fontWeight: FontWeight.w700, color: Colors.black38, fontSize: 17)),
                            Expanded(child: Container()),
                            Icon(Icons.search, color: Colors.black38, size: 30),
                            SizedBox(width: 6.0)
                          ],
                          
                          )           
                        ),
                        //ahora vamos a poner unos containers para poner un menu interactivo
                        //vamos a colocar los widgets que necesitamos
                        SizedBox(height: dimensiones.pfondo(3)),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                MenuOpcion(
                                  color: Color(0xffF8BBD0),
                                  dimensiones: dimensiones,
                                  imagen: 'assets/cuchilleria.svg',
                                  icono: Colors.white
                                ),
                                Text('Restaurantes', style: TextStyle(fontFamily: 'sans', fontWeight: FontWeight.w600))
                              ] 
                            ),
                            Column(
                              children: [
                                MenuOpcion(
                                  color: Color(0xffDCE775),
                                  dimensiones: dimensiones,
                                  imagen: 'assets/licor.svg',
                                ),
                                Text('licores', style: TextStyle(fontFamily: 'sans', fontWeight: FontWeight.w600))
                              ] 
                            ),
                            Column(
                              children: [
                                MenuOpcion(
                                  color: Color(0xffFFE082),
                                  dimensiones: dimensiones,
                                  imagen: 'assets/maletin.svg',
                                  icono: Color(0xffD7CCC8)
                                ),
                                Text('Farmacia', style: TextStyle(fontFamily: 'sans', fontWeight: FontWeight.w600))
                              ] 
                            ),
                          ],
                        ),
                        SizedBox(height: dimensiones.pfondo(3)),
                        Row(
                          children: [
                            Column(
                              children: [
                                MenuOpcion(
                                  color: Color(0xffCFD8DC),
                                  dimensiones: dimensiones,
                                  imagen: 'assets/regalo.svg',
                                  icono: Color(0xffBF360C)
                                ),
                                Text('Regalos', style: TextStyle(fontFamily: 'sans', fontWeight: FontWeight.w600))
                              ] 
                            ),
                            Column(
                              children: [
                                MenuOpcion(
                                  color: Color(0xffE1F5FE),
                                  dimensiones: dimensiones,
                                  imagen: 'assets/tornillo.svg',
                                ),
                                Text('Ferreteria', style: TextStyle(fontFamily: 'sans', fontWeight: FontWeight.w600))
                              ] 
                            ),
                            Column(
                              children: [
                                MenuOpcion(
                                  color: Color(0xffFFE082),
                                  dimensiones: dimensiones,
                                  imagen: 'assets/tienda-de-viveres.svg',
                                  //icono: Color(0xffD7CCC8)
                                ),
                                Text('Abarrotes', style: TextStyle(fontFamily: 'sans', fontWeight: FontWeight.w600))
                              ] 
                            ),
                          ],
                        ),
                        SizedBox(height: dimensiones.pfondo(3)),
                        Padding(
                          padding: EdgeInsets.only(left: dimensiones.pfondo(2)),
                          child: Text('Negocios con mas Pedidos', style: TextStyle(fontFamily: 'raleway', fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xff388E3C)))
                        ),
                        //vamos a comenzar a poner una lista con los negocios con mas visitas
                        //SizedBox(height: dimensiones.pfondo(1)),
                        Container(
                            //color: Colors.redAccent,
                            height: dimensiones.pfondo(24),
                            width: dimensiones.ancho,
                            child: ListView.builder(
                              itemBuilder: (_, index){
                                //vamos a devolver los containers
                                switch(index){
                                  case 0  : 
                                    path = 'assets/cerveza.svg';
                                    negocio = 'Deposito EL VALE';
                                    color = Color(0xffFFCDD2);
                                  break;

                                  case 1  : 
                                    path = 'assets/moda.svg';
                                    negocio = 'Crimis Fashion';
                                    color = Color(0xff7986CB);
                                  break;

                                  case 2  : 
                                    path = 'assets/pizza.svg';
                                    negocio = 'California Pizza';
                                    color = Color(0xffC0CA33);
                                  break;

                                  case 3  : 
                                    path = 'assets/tienda.svg';
                                    negocio = 'Abarrotes Marpa';
                                    color = Color(0xff90CAF9);
                                  break;

                                  case 4  :
                                    path = 'assets/enchilada.svg';
                                    negocio = 'Antojitos El Centro';
                                    color = Color(0xff00BFA5);
                                  break;
                                }
                                return BestNegocios(
                                  dimensiones: dimensiones,
                                  indice: index,
                                  imagen: path,
                                  negocio: negocio,
                                  color: color
                                );
                              },
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                  ]
                      ),
                ),
                
              ],
              
            )
        )
        );
  }
  }

  //hemos terminado con la parte del diseño ahora vamos a comenzar con la parte de nuestro perfil