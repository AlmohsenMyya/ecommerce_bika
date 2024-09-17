import 'package:almohsen_ecommerce/core/app_export.dart';
import 'package:almohsen_ecommerce/presentation/splash_screen/models/splash_model.dart';

import '../../../core/utils/prefs/auth_pref.dart';
import '../../dashboard_container_screen/dashboard_container_screen.dart';

/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  // Instance of PrefAuthUtils for storing user data
  final PrefAuthUtils prefAuthUtils = PrefAuthUtils();

  // Constructor to initialize the AuthRepo and PrefAuthUtils
  LoginController() {
    prefAuthUtils.init();
  }
  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (prefAuthUtils.getToken() == null ){
      Get.offNamed(
        AppRoutes.loginScreen,
      );} else {
        Get.offAll(DashboardContainerScreen());
      }
    });
  }
}
