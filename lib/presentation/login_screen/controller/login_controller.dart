import 'package:almohsen_ecommerce/core/app_export.dart';
import 'package:almohsen_ecommerce/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/prefs/auth_pref.dart';
import '../../../core/utils/validation_functions.dart';
import '../../../data/models/user_model.dart';
import '../../../data/repository/auth_repo.dart';
import '../models/login_model.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj and handles the login logic.
class LoginController extends GetxController {
  // TextEditingControllers for login form fields
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Observable model for state management
  Rx<LoginModel> loginModelObj = LoginModel().obs;

  // Instance of AuthRepo for making API calls
  final AuthRepo authRepo = AuthRepo();

  // Instance of PrefAuthUtils for storing user data
  final PrefAuthUtils prefAuthUtils = PrefAuthUtils();

  // Constructor to initialize the AuthRepo and PrefAuthUtils
  LoginController() {
    prefAuthUtils.init();
  }

  // Method to validate the form and login the user
  Future<void> loginUser() async {
    if (_validateForm()) {
      try {
        _showLoading();

        // Create login data from form inputs
        final response = await authRepo.login(
          login: emailController.text,
          password: passwordController.text,
        );

        // Extract the user and token from the response map
        final user = response['user'];
        final token = response['token'];
        final errormessage = response['message'];

        // Ensure the user and token are not null before saving
        if (user != null && token != null) {
          await prefAuthUtils.saveUserData(UserModel.fromJson(user));
          await prefAuthUtils.saveToken(token);

          _hideLoading();

          // Handle successful login
          _showSuccessSnackbar('Login Successful', 'Welcome back!');
          Get.offAll(DashboardContainerScreen());
        }else if (errormessage == "Unauthorized") {

          _hideLoading();
          _showErrorSnackbar('Login Failed', '$errormessage');
        } else {
          _hideLoading();
          _showErrorSnackbar('Login Failed', '$errormessage');
        }
      } catch (e) {
        _hideLoading();
        Logger.log("Failed login ${e.toString()}", level: LogLevel.error, isSensitive: true);
        _showErrorSnackbar('Login Failed', e.toString());
      }
    }
  }

  // Form validation
  bool _validateForm() {
    if (emailController.text.isEmpty || !isValidEmail(emailController.text)) {
      _showErrorSnackbar('Validation Error', 'A valid email is required.');
      return false;
    }

    if (passwordController.text.isEmpty) {
      _showErrorSnackbar('Validation Error', 'Password is required.');
      return false;
    }

    return true;
  }

  // Method to show a loading indicator
  void _showLoading() {
    Get.dialog(
      Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
    );
  }

  // Method to hide the loading indicator
  void _hideLoading() {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
  }

  // Method to show a success message
  void _showSuccessSnackbar(String title, String message) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // Method to show an error message
  void _showErrorSnackbar(String title, String message) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
