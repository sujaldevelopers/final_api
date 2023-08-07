import 'package:final_api/api_3/api_3_calling.dart';
import 'package:final_api/api_3/api_3_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Api3Home extends StatefulWidget {
  const Api3Home({Key? key}) : super(key: key);

  @override
  State<Api3Home> createState() => _Api3HomeState();
}

class _Api3HomeState extends State<Api3Home> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {api3calling();});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Api-3"),
        backgroundColor: const Color(0xff336B87),
      ),
      body: FutureBuilder(
        future: api3calling(),
        builder:  (context, AsyncSnapshot<Map<String,dynamic>?>snapshot) {
        if(snapshot.hasData)
          {
            return Api3Ui(user: snapshot.data!);
          }else if(snapshot.hasError)
            {
              return Text("Error Home Page : ${snapshot.error}");
            }else
              {
                return const SpinKitSpinningLines(
                  color: Color(0xff336B87),
                  size: 50.0,);
              }
      },),
    );
  }
}
