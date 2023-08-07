import 'dart:convert';
import 'dart:developer';

import 'package:final_api/api_4/api_4_model.dart';
import 'package:http/http.dart'as http;
import 'package:http/http.dart';



Future<api4Model?>api4Caller()async{
  final uri=Uri.parse("https://jsonplaceholder.typicode.com/todos/1");
  try{
    Response response=await http.get(uri);
    log("StatusCode : ${response.statusCode}");
    if(response.statusCode==200)
    {
      final list=jsonDecode(response.body);
      final result =api4Model.fromJson(list);
      return result;
    }else
    {
      return null;
    }
  }catch(e){
    log("Error :$e");
    return null;
  }
}