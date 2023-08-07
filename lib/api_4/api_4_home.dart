import 'package:final_api/api_4/api_4_calling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'api_4_model.dart';
import 'api_4_ui.dart';

class Api4Home extends StatefulWidget {
  const Api4Home({Key? key}) : super(key: key);

  @override
  State<Api4Home> createState() => _Api4HomeState();
}

class _Api4HomeState extends State<Api4Home> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {api4Caller();});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff336B87),
      ),
      body: FutureBuilder(
        future: api4Caller(),
        builder: (context, AsyncSnapshot<api4Model?>snapshot) {
          if(snapshot.hasData)
          {
            return Api4UI(user: snapshot.data!);
          }else if(snapshot.hasError)
          {
            return Text("Error :${snapshot.error}");
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
