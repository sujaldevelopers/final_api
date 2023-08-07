
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'api_6_model.dart';

Future<List<Api6Model>>api6calling()async{
  final dio=Dio();
  final uri="https://jsonplaceholder.typicode.com/users";

  try{
    Response response =await dio.get(uri);
    log("Status Code : ${response.statusCode}");
    log("Body : ${response.data}");
    if(response.statusCode==200)
      {
        final List list =response.data;
        final result =List<Api6Model>.from(list.map((e)=>Api6Model.fromJson(e)));
        return result;
      }else
        {
          return [];
        }
  }on DioException catch(e){
    log("Error Dio Exception : $e");
    return [];
  }
  catch(e){
    log("Error catch : $e");
    return [];
  }
}