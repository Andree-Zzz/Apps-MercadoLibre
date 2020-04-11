import 'package:flutter/material.dart';

Widget acciones(){
  return Container(
    child: Row( 
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _iconos(Icons.favorite_border),
        _iconos(Icons.share),
        _iconos(Icons.search)
    ],),
  );
}

Widget leading(){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _iconos(Icons.menu)
      ],
    ),
  );
}

Widget _iconos(IconData icon) {
  final sizeIcon1=30.0;
  final colorIcon=Colors.black;
  return Icon(icon,color: colorIcon,size: sizeIcon1,);
}
 Widget estrellas(){
   return Container(
     child: Row(
       children: <Widget>[
         Icon(Icons.star, color: Colors.yellow),
         Icon(Icons.star, color: Colors.yellow),
         Icon(Icons.star, color: Colors.yellow),
         Icon(Icons.star, color: Colors.yellow),
         Icon(Icons.star, color: Colors.yellow),
         Text('12 opciones',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15.0),)
       ],
     ),
   );
 }

 Widget iconsCompra(){
   return Container(
     child: Row(
       children: <Widget>[
         Icon(Icons.web_asset),
         Text('36x102.000'),
       ],
     ),
   );
 }
 Widget envio(){
   return Container(
     child: Row(
       children: <Widget>[
         Icon(Icons.airport_shuttle),
         Text('Envio  gratis',style: TextStyle(color: Colors.green),)
       ],
     ),
   );
 }
