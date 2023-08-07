import 'package:final_api/api_5/api_5_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'api_5_calling.dart';
import 'api_5_model.dart';

class Api5Home extends StatefulWidget {
  const Api5Home({Key? key}) : super(key: key);

  @override
  State<Api5Home> createState() => _Api5HomeState();
}

class _Api5HomeState extends State<Api5Home> {
  @override
  // void initState() {
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     api5Calling();
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Api-5"),
        backgroundColor: const Color(0xff336B87),
      ),
      body: FutureBuilder(
        future: api5Calling(),
        builder: (context, AsyncSnapshot<List<Api5Model>>snapshot) {
          if(snapshot.hasData)
            {
              return Api5Ui(user: snapshot.data!);
            }else if(snapshot.hasError){
            return Text("Else Home  Error : ${snapshot.error}");
          }else{
            return const SpinKitSpinningLines(
              color: Color(0xff336B87),duration: Duration(milliseconds: 10),
              size: 50.0,);
          }
      },),
    );
  }
}
