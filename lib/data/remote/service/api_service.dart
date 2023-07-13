import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/login_model.dart';
import '../../../core/constants.dart';
import '../model/login_response.dart';

class ApiService {
  static Future<LoginResponse> login({required LoginModel body}) async {
    final response = await http.post(Uri.parse('http://vbatest.metrdev.com:2472/api/v1/signin'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(body.toJson()));

    if (response.statusCode == 200) {
      final body = response.body;
      final bodyJson = jsonDecode(body);
      return LoginResponse.fromJson(bodyJson);
    }
    if(response.statusCode==201){
      final body = response.body;
      final bodyJson = jsonDecode(body);
      throw Exception(bodyJson['message']);
    }
    throw Exception("Unable to login");
  }
}
