import 'dart:convert';
import 'package:almohsen_ecommerce/core/constants/end_points.dart';
import 'package:http/http.dart' as http;

import '../../core/utils/logger.dart';
import '../models/user_model.dart';

class AuthRepo {

  AuthRepo();

  Future<Map<String, dynamic>> login({
    required String login,
    required String password,
  }) async {
    final url = Uri.parse(EndPoints.baseUrl+EndPoints.login);
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'login': login,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to login: ${response.body}');
    }
  }

  Future<void> logout(String token) async {
    final url = Uri.parse(EndPoints.baseUrl + EndPoints.logout);
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to logout: ${response.body}');
    }
  }

  Future<Map<String, dynamic>> register(UserModel user) async {
    print("start register");

    final url = Uri.parse(EndPoints.baseUrl+EndPoints.register);
    Logger.log("start register $url ${user.toJson()}", level: LogLevel.debug, isSensitive: true);
    final request = http.MultipartRequest('POST', url);

    request.fields['name_en'] = user.nameEn;
    request.fields['name_ar'] = user.nameAr;
    request.fields['username_en'] = user.usernameEn;
    request.fields['username_ar'] = user.usernameAr;
    request.fields['email'] = user.email;
    request.fields['phone_number'] = user.phoneNumber;
    request.fields['password'] = user.password;
    request.fields['sex_en'] = user.sexEn;
    request.fields['sex_ar'] = user.sexAr;
    request.fields['date_of_birth'] = user.dateOfBirth;
    request.fields['password_confirmation'] = user.password;

    if (user.image != null) {
      request.files.add(await http.MultipartFile.fromPath('image', user.image!));
    }

    final response = await request.send();
    final responseBody = await http.Response.fromStream(response);
    print("start 1 register${response.statusCode} ${responseBody.body}");
    Logger.log("start 1 register${response.statusCode} ${responseBody.body}", level: LogLevel.debug, isSensitive: true);
    // if (response.statusCode == 200) {
    //   final responseBody = await http.Response.fromStream(response);
      return jsonDecode(responseBody.body);
    // } else {
    //   throw Exception('Failed to register: ${response.statusCode}');
    // }
  }
}
