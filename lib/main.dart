import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main( ){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Text(
          '这是一行文本',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          strutStyle: StrutStyle(leading: 2, fontSize: 30),
          softWrap: false,
          style: TextStyle(
            background: Paint()..color = Colors.green,
            color: Colors.black,
            decoration: TextDecoration.combine([TextDecoration.underline, TextDecoration.overline]),
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold
          ),
        )
      ),
    );
  }

}