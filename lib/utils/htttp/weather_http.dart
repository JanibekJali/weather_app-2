import 'dart:convert';

import 'package:http/http.dart';

class WeatherHttp {
  static Future<Map<String, dynamic>> get(String url) async {
    try {
      final client = Client();
      Uri uri = Uri.parse(url);
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = response.body;
        final jsonData = jsonDecode(body) as Map<String, dynamic>;
        return jsonData;
      } else {
        return Map();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Map<String, dynamic>> post(String url) async {
    try {
      final client = Client();
      Uri uri = Uri.parse(url);
      final response = await client.post(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = response.body;
        final jsonData = jsonDecode(body) as Map<String, dynamic>;
        return jsonData;
      } else {
        return Map();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Map<String, dynamic>> put(String url) async {
    try {
      final client = Client();
      Uri uri = Uri.parse(url);
      final response = await client.put(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = response.body;
        final jsonData = jsonDecode(body) as Map<String, dynamic>;
        return jsonData;
      } else {
        return Map();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Map<String, dynamic>> delete(String url) async {
    try {
      Uri uri = Uri.parse(url);
      final response = await Client().delete(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = response.body;
        final jsonData = jsonDecode(body) as Map<String, dynamic>;
        return jsonData;
      } else {
        return Map();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Map<String, dynamic>> patch(String url) async {
    try {
      final client = Client();
      Uri uri = Uri.parse(url);
      final response = await client.patch(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = response.body;
        final jsonData = jsonDecode(body) as Map<String, dynamic>;
        return jsonData;
      } else {
        return Map();
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
