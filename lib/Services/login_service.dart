import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:modelproject/Model/user/user.dart';
import 'package:modelproject/Services/api_service.dart';
import 'package:http/http.dart' as http;

class LoginService extends ApiService {
  Future<List<User>> loginUser() async {
    baseUrl = 'https://jsonplaceholder.typicode.com';
    path = '/posts';
    final url = Uri.parse("${baseUrl ?? ""}${path ?? ""}");
    print(url);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      debugPrint(response.body);
      return List<User>.from(json.map((elemento) {
        return User.fromJson(elemento);
      }));
    } else {
      return Future.error("Erro ao buscar dados da api $response.statusCode");
    }
  }
}
