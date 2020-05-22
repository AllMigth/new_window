import 'package:ejemplodenuevaventana/second.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: First(),
    );
  }
}

class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Navegacion con route'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Ingrese la clave:'),
            TextField(
              enabled: true,
              maxLength: 10,
              controller: _controller,
            ),
            RaisedButton(
              child: Text('Click'),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Second(dato: _controller.text)));
              },
            )
          ],
        ),
      ),
    );
  }
}

