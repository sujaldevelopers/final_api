import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart'as http;
import 'package:http/http.dart';

Future<Map<String,dynamic>?>api3calling()async{
  final uri=Uri.parse("https://jsonplaceholder.typicode.com/users/1");

  try{
    Response response=await http.get(uri);
    log("StatusCode : ${response.statusCode}");
    log("Body : ${response.body}");
    await Future.delayed(Duration(seconds: 5));
    if(response.statusCode==200)
      {
        final list=jsonDecode(response.body);
        return list;
      }else
        {
          log("Error part");
          return null;
        }
  }catch(e){
    log(("Error Catch : $e"));
    return null;
  }
}