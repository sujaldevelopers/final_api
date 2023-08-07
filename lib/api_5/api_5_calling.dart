import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'api_5_model.dart';

Future <List<Api5Model>> api5Calling() async {
  final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");

  try {
    Response response = await http.get(uri);

    log("Status Code : ${response.statusCode}");
    log("Body : ${response.body}");
    await Future.delayed(Duration(seconds: 0));
    if (response.statusCode == 200) {
      final list = jsonDecode(response.body);
      final result = List<Api5Model>.from(
        list.map(
          (e) => Api5Model.fromJson(e),
        ),
      );
      return result;
    }else{
      return [];
    }
  } catch (e) {
    log("Error Catch : $e");
    return [];
  }
}
