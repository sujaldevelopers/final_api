import 'package:final_api/api_6/api_6_calling.dart';
import 'package:final_api/api_6/api_6_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'api_6_model.dart';

class Api6Home extends StatefulWidget {
  const Api6Home({Key? key}) : super(key: key);

  @override
  State<Api6Home> createState() => _Api6HomeState();
}

class _Api6HomeState extends State<Api6Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Api-6"),
        backgroundColor: const Color(0xff336B87),
      ),
      body: FutureBuilder(
        future: api6calling(),
        builder: (context, AsyncSnapshot<List<Api6Model>>snapshot) {
        if(snapshot.hasData)
          {
            return Api6Ui(user: snapshot.data!);
          }
        else if(snapshot.hasData){
          return Text("Error Home Page : ${snapshot.error}");
        } else
          {
            return const SpinKitSpinningLines(
              color: Color(0xff336B87),
              duration: Duration(milliseconds: 10),
              size: 50.0,);
          }
      },),
    );
  }
}
