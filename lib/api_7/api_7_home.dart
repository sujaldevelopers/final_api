import 'package:final_api/api_7/api_7_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import 'api_7_provider.dart';

class Api7Home extends StatefulWidget {
  const Api7Home({Key? key}) : super(key: key);

  @override
  State<Api7Home> createState() => _Api7HomeState();
}

class _Api7HomeState extends State<Api7Home> {
  List<Map<String, dynamic>>? service;

  @override
  void initState() {
    print('InitState');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<Providers>().api7Provider().then((value) {
        if (value.success && value.data != null) {
          service = List<Map<String, dynamic>>.from(value.data);
          setState(() {});
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<Providers>();
    return Scaffold(
        appBar: AppBar(),
        body: provider.Loding ?
        Center(
            child: SpinKitSpinningLines(
              color: Color(0xff336B87),
              duration: Duration(milliseconds: 10),
              size: 50.0,),)
                :service!=null?
        Api7Ui(user: service!)
            : Center(child: Image(image: AssetImage("assets/image/PuXipAW3AXUzUJ4uYyxPKC-1200-80.jpg")))
    );
  }
}
