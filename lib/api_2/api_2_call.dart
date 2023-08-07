import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<List<Map<String, dynamic>>?> api2calling() async {
  final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  try {
    Response response = await http.get(uri);
    log("StatusCode :${response.statusCode}");
    log("Body :${response.body}");
    if (response.statusCode == 200) {
      final list = json.decode(response.body);
      final result = List<Map<String, dynamic>>.from(list);
      return result;
    } else {
      return null;
    }
  } catch (e) {
    log("Error : $e");
    return null;
  }
}
