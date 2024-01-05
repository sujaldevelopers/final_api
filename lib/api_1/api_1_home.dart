
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'api_1_calling.dart';

class Api1Home extends StatefulWidget {
  const   Api1Home({Key? key}) : super(key: key);

  @override
  State<Api1Home> createState() => _Api1HomeState();
}

class _Api1HomeState extends State<Api1Home> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {api1Call();});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff336B87),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: api1Call(),
            builder: (context, AsyncSnapshot<Map<String,dynamic>?>snapshot) {
              if(snapshot.hasData){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Color(0xff90AFC5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("ID :${snapshot.data!["id"]}"),
                        Text("UserId :${snapshot.data!["userId"]}"),
                        Text("Title :${snapshot.data!["title"]}"),
                        Text("Completed :${snapshot.data!["completed"]}"),
                      ],
                    ),
                  ),
                );
              }else if(snapshot.hasError){
                return Text("Error : ${snapshot.error}");
              }else{
                return const SpinKitSpinningLines(
                  color: Color(0xff336B87),
                  size: 50.0,);
              }
          },),
        ],
      ),
    );
  }
}
