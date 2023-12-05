import 'dart:convert';

import 'package:mylife/data/models/user_model.dart';
import 'package:http/http.dart' as http;

class RemoteDataSourceImpl {
  final http.Client client;
  RemoteDataSourceImpl({required this.client});

  Future<UserModel?> getCurrentUser() async {
    final response = await client.get(Uri.parse(''));

    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      return null;
    }
  }
}
