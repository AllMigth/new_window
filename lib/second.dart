import 'package:flutter/material.dart';

class Second extends StatelessWidget{
  Second ({@required this.dato}): super ();
  String dato = 'Hola';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
      ),
      body: Column(
        children: <Widget>[
          Text('Hola mundo $dato'),
          RaisedButton(
          splashColor: Colors.red,
          autofocus: true,
          onPressed: () {
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}