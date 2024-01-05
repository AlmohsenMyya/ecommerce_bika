import '../review_product_screen/widgets/reviewproduct_item_widget.dart';import 'controller/review_product_controller.dart';import 'models/reviewproduct_item_model.dart';import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_subtitle.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';import 'package:dhiwise_ecommerce/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class ReviewProductScreen extends GetWidget<ReviewProductController> {const ReviewProductScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 9.v), child: Column(children: [SizedBox(height: 18.v), _buildReviewProduct()])), bottomNavigationBar: _buildWriteReview())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 19.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitle(text: "lbl_5_review2".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Section Widget
Widget _buildReviewProduct() { return Expanded(child: Padding(padding: EdgeInsets.only(left: 19.h, right: 23.h), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 32.v);}, itemCount: controller.reviewProductModelObj.value.reviewproductItemList.value.length, itemBuilder: (context, index) {ReviewproductItemModel model = controller.reviewProductModelObj.value.reviewproductItemList.value[index]; return ReviewproductItemWidget(model);})))); } 
/// Section Widget
Widget _buildWriteReview() { return CustomElevatedButton(text: "lbl_write_review".tr, margin: EdgeInsets.only(left: 19.h, right: 13.h, bottom: 58.v), onPressed: () {onTapWriteReview();}); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the writeReviewFillScreen when the action is triggered.
onTapWriteReview() { Get.toNamed(AppRoutes.writeReviewFillScreen, ); } 
 }
