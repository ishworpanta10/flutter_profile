import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:profile_app/model/model.dart';

class ApiService {
  final url = "https://jsonplaceholder.typicode.com/users";

  Future<List<ApiUserModel>?> getApiUsers() async {
    final parsedUrl = Uri.parse(url);
    try {
      final response = await http.get(parsedUrl);
      if (response.statusCode != 200) {
        throw Exception("Error in Getting Data from API");
      }
      // print(response.body);
      final decodedData = jsonDecode(response.body) as List;
      final apiUserList = decodedData.map((user) => ApiUserModel.fromJson(user)).toList();
      // print(apiUserList[0].name);
      return apiUserList;
    } catch (err) {
      debugPrint("Error during fetching api $err");
    }
  }
}
