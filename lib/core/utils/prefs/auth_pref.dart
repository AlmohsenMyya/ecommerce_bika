import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../data/models/user_model.dart';

class PrefAuthUtils {
  static SharedPreferences? _sharedPreferences;

  PrefAuthUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  /// Store user data in SharedPreferences
  Future<void> saveUserData(UserModel user) async {
    final userData = jsonEncode(user.toJson());
    await _sharedPreferences!.setString('userData', userData);
  }

  /// Store the token in SharedPreferences
  Future<void> saveToken(String token) async {
    await _sharedPreferences!.setString('authToken', token);
  }

  /// Retrieve user data from SharedPreferences
  UserModel? getUserData() {
    final userData = _sharedPreferences!.getString('userData');
    if (userData != null) {
      return UserModel.fromJson(jsonDecode(userData));
    }
    return null;
  }

  /// Retrieve the token from SharedPreferences
  String? getToken() {
    return _sharedPreferences!.getString('authToken');
  }

  /// Clear user data and token from SharedPreferences
  Future<void> clearAuthData() async {
    await _sharedPreferences!.remove('userData');
    await _sharedPreferences!.remove('authToken');
  }
}
