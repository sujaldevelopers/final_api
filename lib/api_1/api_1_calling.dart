import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart'as http;
import 'package:http/http.dart';

Future<Map<String,dynamic>?>api1Call()async {
  final uri=Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  try{
    Response response=await http.get(uri);
    log("StatusCode : ${response.statusCode}");
    log("body : ${response.body}");
    if(response.statusCode==200){
      final result=json.decode(response.body);
      return result;
    }else
      {
        return null;
      }
  }catch(e){
    log("Error : $e");
    return null;
  }
}