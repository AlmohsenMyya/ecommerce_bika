import 'package:almohsen_ecommerce/core/app_export.dart';
import 'package:almohsen_ecommerce/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/prefs/auth_pref.dart';
import '../../../data/models/user_model.dart';
import '../../../data/repository/auth_repo.dart';

/// A controller class for the RegisterScreen.
///
/// This class manages the state of the RegisterScreen, including the
/// current registerModelObj and handles the registration logic.
class RegisterController extends GetxController {
  // TextEditingControllers for the form fields
  TextEditingController fullNameEnController = TextEditingController();
  TextEditingController fullNameArController = TextEditingController();
  TextEditingController usernameEnController = TextEditingController();
  TextEditingController usernameArController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController sexEnController = TextEditingController();
  TextEditingController sexArController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();

  // Observable model for state management
  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  // Instance of AuthRepo for making API calls
  final AuthRepo authRepo = AuthRepo();

  // Instance of PrefAuthUtils for storing user data
  final PrefAuthUtils prefAuthUtils = PrefAuthUtils();

  // Constructor to initialize the AuthRepo and PrefAuthUtils
  // RegisterController({required this.authRepo}) {
  //   prefAuthUtils.init();
  // }

  // Method to validate the form and register the user
  Future<void> registerUser() async {
    if (_validateForm()) {
      try {
        _showLoading();

        // Create UserModel from form data
        UserModel userModel = UserModel(
          id: '', // This will be filled by the server
          nameEn: fullNameEnController.text,
          nameAr: fullNameArController.text,
          usernameEn: "usernameEnController.text",
          usernameAr: "usernameArController.text",
          email: emailController.text,
          phoneNumber: "0995645555",
          password: passwordController.text,
          sexEn: "male",
          sexAr: "ذكر",
          dateOfBirth: "1995-08-15",
          image: null,
          createdAt: '', // This will be filled by the server
          updatedAt: '', // This will be filled by the server
        );

        // Call the register method from AuthRepo
        final response = await authRepo.register(userModel);

        // Extract the user and token from the response map
        final user = response['user'];
        final token = response['token'];

        // Ensure the user and token are not null before saving
        if (user != null && token != null) {
          await prefAuthUtils.saveUserData(UserModel.fromJson(user));
          await prefAuthUtils.saveToken(token);

          _hideLoading();

          // Handle successful registration
          _showSuccessSnackbar('Registration Successful', 'Welcome to the app!');
          Get.offAllNamed('/home');
        } else {
          _hideLoading();
          _showErrorSnackbar('Registration Failed', 'Invalid response data.');
        }
      } catch (e) {
        _hideLoading();
        Logger.log("Failed register ${e.toString()}", level: LogLevel.error, isSensitive: true,);
        _showErrorSnackbar('Registration Failed', e.toString());
      }
    }
  }

  // Validate the form data
  bool _validateForm() {
    return true;
    if (fullNameEnController.text.isEmpty ||
        fullNameArController.text.isEmpty ||
        usernameEnController.text.isEmpty ||
        usernameArController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneNumberController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty ||
        sexEnController.text.isEmpty ||
        sexArController.text.isEmpty ||
        dateOfBirthController.text.isEmpty) {
      _showErrorSnackbar('Validation Error', 'All fields are required.');
      return false;
    }
    if (passwordController.text != confirmPasswordController.text) {
      _showErrorSnackbar('Validation Error', 'Passwords do not match.');
      return false;
    }
    return true;
  }

  void _showLoading() {
    Get.dialog(
      Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
    );
  }

  void _hideLoading() {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
  }

  void _showSuccessSnackbar(String title, String message) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

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
    fullNameEnController.dispose();
    fullNameArController.dispose();
    usernameEnController.dispose();
    usernameArController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    sexEnController.dispose();
    sexArController.dispose();
    dateOfBirthController.dispose();
  }
}
