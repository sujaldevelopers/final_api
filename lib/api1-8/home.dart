import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model_class.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future get() async {
    var url = Uri.parse('https://dummyjson.com/products');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    Map map = jsonDecode(response.body);
    List l = map['products'];
    return l;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: get(),
        builder: (context, snapshot) {
          List l1 = snapshot.data;
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          return ListView.builder(
            itemCount: l1.length,
            itemBuilder: (context, index) {
              Products p = Products.fromJson(l1[index]);
              print(l1);
              return ListTile(
                title: Text("Id : ${p.brand}"),
              );
            },
          );
        },
      ),
    );
  }
}
