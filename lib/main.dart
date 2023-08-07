import 'package:final_api/api_1/api_1_home.dart';
import 'package:final_api/api_7/api_7_provider.dart';
import 'package:final_api/helper_function/nevigater.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api_2/api_2_home.dart';
import 'api_3/api_3_home.dart';
import 'api_4/api_4_home.dart';
import 'api_5/api_5_home.dart';
import 'api_6/api_6_home.dart';
import 'api_7/api_7_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) =>
      Providers()
    )],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text(
          "Api First Page",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding:
              const EdgeInsets.only(bottom: 10, top: 10, left: 5, right: 5),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff2A3132).withAlpha(75),
              ),
              child: Icon(Icons.api, size: 25)),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 10, top: 10, left: 5, right: 5),
            child: Container(
                height: 35,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff2A3132).withAlpha(75),
                ),
                child: Icon(Icons.more_vert, size: 25)),
          ),
        ],
        elevation: 0.0,
        centerTitle: true,
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xff336B87),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(15, 50),
                bottomLeft: Radius.elliptical(15, 50)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HelperBox(page:Api1Home(), text: 'Api-1',),
              HelperBox(page:Api2Home(), text: 'Api-2',),
              HelperBox(page:Api3Home(), text: 'Api-3',),
              HelperBox(page:Api4Home(), text: 'Api-4',),
              HelperBox(page:Api5Home(), text: 'Api-5',),
              HelperBox(page:Api6Home(), text: 'Api-6',),
              HelperBox(page:Api7Home(), text: 'Api-7',),
              //HelperBox(page:Api7Home(), text: 'Api-8',),
            ],
          ),
        ),
      )
    );
  }
}
