import 'package:final_api/api_2/api_2_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'api_2_call.dart';

class Api2Home extends StatefulWidget {
  const Api2Home({Key? key}) : super(key: key);

  @override
  State<Api2Home> createState() => _Api2HomeState();
}

class _Api2HomeState extends State<Api2Home> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      api2calling();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff336B87),
      ),
      body: FutureBuilder(
        future: api2calling(),
        builder:
            (context, AsyncSnapshot<List<Map<String, dynamic>>?> snapshot) {
          if (snapshot.hasData) {
            return Api2Ui(user: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text("Error : ${snapshot.error}");
          } else {
            return const SpinKitSpinningLines(
              color: Color(0xff336B87),
              size: 50.0,);

          }
        },
      ),
    );
  }
}
