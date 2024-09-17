import 'package:almohsen_ecommerce/core/app_export.dart';
import 'package:almohsen_ecommerce/presentation/account_page/models/account_model.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/prefs/auth_pref.dart';
import '../../../data/repository/auth_repo.dart';

/// A controller class for the AccountPage.
///
/// This class manages the state of the AccountPage, including the
/// current accountModelObj and handles the logout logic.
class AccountController extends GetxController {
  // Constructor to initialize the accountModel
  AccountController(this.accountModelObj);

  // Observable model for state management
  Rx<AccountModel> accountModelObj;

  // Instance of AuthRepo for making API calls
  final AuthRepo authRepo = AuthRepo();

  // Instance of PrefAuthUtils for managing user session
  final PrefAuthUtils prefAuthUtils = PrefAuthUtils();

  // Method to handle user logout
  Future<void> logoutUser() async {
    try {
      // Get the token from saved preferences
      String? token = await prefAuthUtils.getToken();

      if (token != null) {
        _showLoading();

        // Call the logout API
        await authRepo.logout(token);

        // Clear user data from local storage
        await prefAuthUtils.clearAuthData();

        _hideLoading();

        // Redirect to login screen or any other screen
        Get.offAllNamed(AppRoutes.loginScreen);

        // Show a success message
        _showSuccessSnackbar('Logout Successful', 'You have been logged out.');
      } else {
        _showErrorSnackbar('Logout Failed', 'No user session found.');
      }
    } catch (e) {
      _hideLoading();
      Logger.log("Failed to logout: ${e.toString()}", level: LogLevel.error, isSensitive: true);
      _showErrorSnackbar('Logout Failed', e.toString());
    }
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
}
