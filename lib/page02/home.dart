import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String data;
  Home({
    required this.data
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: FilledButton(
        onPressed: () => Navigator.pop(context),
        child:  Text(
          data,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white, fontSize: 32.0),
        ),
      )),
    );
  }
}
