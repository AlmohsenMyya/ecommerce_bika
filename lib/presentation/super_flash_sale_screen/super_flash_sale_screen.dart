import '../super_flash_sale_screen/widgets/superflashsale_item_widget.dart';import 'controller/super_flash_sale_controller.dart';import 'models/superflashsale_item_model.dart';import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_subtitle.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_trailing_image.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class SuperFlashSaleScreen extends GetWidget<SuperFlashSaleController> {const SuperFlashSaleScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Padding(padding: EdgeInsets.only(left: 16.h, top: 26.v, right: 16.h), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.superFlashSaleModelObj.value.superflashsaleItemList.value.length, itemBuilder: (context, index) {SuperflashsaleItemModel model = controller.superFlashSaleModelObj.value.superflashsaleItemList.value[index]; return SuperflashsaleItemWidget(model);}))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitle(text: "msg_super_flash_sale".tr, margin: EdgeInsets.only(left: 12.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgNavExplore, margin: EdgeInsets.fromLTRB(16.h, 14.v, 16.h, 17.v), onTap: () {onTapSearchIcon();})]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the searchScreen when the action is triggered.
onTapSearchIcon() { Get.toNamed(AppRoutes.searchScreen, ); } 
 }
