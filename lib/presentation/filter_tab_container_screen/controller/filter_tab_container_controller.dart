import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/presentation/filter_tab_container_screen/models/filter_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FilterTabContainerScreen.
///
/// This class manages the state of the FilterTabContainerScreen, including the
/// current filterTabContainerModelObj
class FilterTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  Rx<FilterTabContainerModel> filterTabContainerModelObj =
      FilterTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
    priceController1.dispose();
  }
}
