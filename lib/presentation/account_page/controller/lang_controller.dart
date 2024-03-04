import 'dart:ui';

import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LocalizationController extends GetxController {
  static List<String> languages = ["en", "ar"]; // English and Arabic

  RxString _locale = "en".obs;
  String get locale => _locale.value;

  void changeLocale(String newLocale) {
    _locale.value = newLocale;
    Get.updateLocale(Locale(newLocale));
    update(); // Notify the UI
  }
}