
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class Hptest extends StatefulWidget {
  @override
  _HpTestState createState() => _HpTestState();
}


class _HpTestState extends State<Hptest>{
  List<dynamic> _list = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    Dio dio = Dio();
    String url = "https://jsonplaceholder.typicode.com/users";

    try {
      Response  response = await dio.get(url);
      setState(() {
        _list = response.data;
        _isLoading = false;
      });
    }  catch (e) {

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list data example"),
      ),
      body:
          _isLoading
          ? const Center(
            child:  Text("居中文本")
          )
          : ListView.builder(
              itemCount: _list.length,
              itemBuilder: (context, index) {
                var item = _list[index];
                return ListTile(
                  title: Text(item['name']),
                  subtitle: Text(item['email']),
                );
              }
          )


    );
  }

}
