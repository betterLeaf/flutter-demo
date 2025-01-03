import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(child: Container(
              color: Colors.blue,
              child: Center(child: Text('top')),
            )),
            Expanded(child: Container(
              color: Colors.red,
              child: Center(child: Text('bottom'),),
            ))
          ],
        )
      ),
    );
  }
}