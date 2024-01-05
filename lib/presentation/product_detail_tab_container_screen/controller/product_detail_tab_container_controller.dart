import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/presentation/product_detail_tab_container_screen/models/product_detail_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProductDetailTabContainerScreen.
///
/// This class manages the state of the ProductDetailTabContainerScreen, including the
/// current productDetailTabContainerModelObj
class ProductDetailTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ProductDetailTabContainerModel> productDetailTabContainerModelObj = ProductDetailTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

Rx<int> sliderIndex = 0.obs;

 }
