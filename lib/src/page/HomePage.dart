import 'package:flutter/material.dart';
//
import 'acciones.dart';

class HomePage extends StatelessWidget {
  final titulo = TextStyle(fontWeight: FontWeight.w300, color: Colors.black, fontSize: 20.0);
  final subtitulo = TextStyle(color: Colors.grey, fontSize: 15.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            child: AppBar(
              leading: leading(),
              title: Text('Producto',style: titulo),
              bottom: PreferredSize(
                  child: direccion(),
                  preferredSize: null),
              actions: <Widget>[acciones()],
              backgroundColor: Colors.yellow,
            ),
            preferredSize: Size.fromHeight(80.0)),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              children: <Widget>[
                Image.network(
                    'https://http2.mlstatic.com/consola-nintendo-switch-nueva-version-32gb-12-neon-bateria-D_NQ_NP_798087-MCO40009209379_122019-F.webp',
                    scale: 3.1),
                detalle()
              ],
            ),
          ),
        ),
        );
  }

  Widget direccion(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 9.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.room,color: Colors.grey,),
          Text('Enviar a Andres Mch - Cra 12#19-23',style: subtitulo),
          Icon(Icons.arrow_forward_ios,color: Colors.grey, size: 15.0),
        ],
      ),
    );
  }

Widget detalle() {
    return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Divider(),
              Text('35 vendidos',style: subtitulo,),
              Text('Consola Nintendo Switch Nueva Version 32gb 1.2 Neon Bateria',
                style: TextStyle(fontWeight: FontWeight.w300,height:1.5, fontSize: 20.0)),
              Text('por Nintendo',style: subtitulo,),
              estrellas(),
              Text('\$ 1.369.900', style: TextStyle(fontWeight: FontWeight.w300,fontSize: 35.0),),
              Text('Disponible en 2 dias apartir de tu compra', style: TextStyle(color: Colors.orange),),
              iconsCompra(),
              Divider(),
              envio(),
              Text('llega entre 1 y 4 de mayo',style: subtitulo),
              Text('Beneficio Mercado Puntos',style: subtitulo),
            ],
          )
    );
  }
  
}
