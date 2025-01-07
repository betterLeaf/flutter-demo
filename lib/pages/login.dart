import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [
          Center(
            child: Image.asset('assets/images/check.png', width: 150, height: 150, )
          )
        ],
      ),
    );
  }
  
}