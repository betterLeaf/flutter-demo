import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchRouter extends StatefulWidget {
  @override
  _SwitchRouterState createState() => _SwitchRouterState();
}

class _SwitchRouterState extends State<SwitchRouter> {
  bool _switchStatus = true;
  bool _checkboxStatus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Switch(
            value: _switchStatus,
            onChanged: (value) {
              setState(() {
                _switchStatus = value!;
              });
            },
          ),
          Checkbox(
            value: _checkboxStatus,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _checkboxStatus = value;
                });
              }
            },
          ),
        ],
      ),
    );


  }
}