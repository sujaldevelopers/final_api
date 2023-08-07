import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:final_api/Response_class.dart';
import 'package:flutter/cupertino.dart';

import 'api_7_model.dart';

class Providers extends ChangeNotifier{
  final dio = Dio();
  bool Loding=false;
  Future<ResponseClass> api7Provider() async {

    final uri = "https://garage.logispire.in/api/service/garage/1";
    ResponseClass responseClass =
    ResponseClass(message: "Api Calling", success: false);
    try {
      Loding=true;
      notifyListeners();
      Response response = await dio.get(uri, options: Options(
          validateStatus: (status) {
            return status == 200 ||
                status == 400 ||
                status == 404 ||
                status == 500;
          }
      ));
      log("Status Code : ${response.statusCode}");
      log("Body : ${response.data}");
      if(response.statusCode==200){
        responseClass.success=true;
        responseClass.message=response.data["msg"];
        responseClass.data=response.data["data"];
        Loding =false;
        notifyListeners();
        return responseClass;

      }else
      {
        responseClass.success=false;
        responseClass.message="Somthing Wrong";
        responseClass.data=false;
        Loding =false;
        notifyListeners();
        return responseClass;
      }
    }on DioException catch(e){
      log("Error DioException : $e");
      Loding =false;
      notifyListeners();
      return responseClass;
    }
    catch (e) {
      log("Error Catch : $e");
      Loding =false;
      notifyListeners();
      return responseClass;
    }
  }
}
