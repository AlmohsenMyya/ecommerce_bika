import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../presentation/account_page/controller/lang_controller.dart';
class LanguageDialog extends StatelessWidget {
  LocalizationController controller = Get.put(LocalizationController());
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Choose Language"),
      content: GetBuilder<LocalizationController>(
        builder: (controller) => Column(
          children: LocalizationController.languages.map((language) {
            return ListTile(
              title: Text(language == "en" ? "English" : "العربية"),
              onTap: () {
                controller.changeLocale(language);
                Get.back(); // Close the dialog
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
