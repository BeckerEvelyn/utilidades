import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  /* 
  USAR API LOCAL 
  http://10.0.2.2:3000
  */
  final baseUrl = "http://10.0.2.2:3000";

  Future<String?> login(Map<String, dynamic> data) async {
    final url = Uri.parse('$baseUrl/login');

    final response = await http.post(
      url,
      headers: {'Content-Type' : 'application/json'},
      body: jsonEncode(data)
    );

    if(response.statusCode == 200){
      final json = jsonDecode(response.body);
      return json['token'];
    }else{
      return null;
    }
  }
}