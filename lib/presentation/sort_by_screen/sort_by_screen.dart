import 'controller/sort_by_controller.dart';import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_subtitle.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class SortByScreen extends GetWidget<SortByController> {const SortByScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_best_match".tr, style: CustomTextStyles.labelLargePrimary), SizedBox(height: 37.v), Text("msg_time_ending_soonest".tr, style: theme.textTheme.labelLarge), SizedBox(height: 35.v), Text("msg_time_newly_listed".tr, style: theme.textTheme.labelLarge), SizedBox(height: 36.v), Text("msg_price_shipping".tr, style: theme.textTheme.labelLarge), SizedBox(height: 36.v), Text("msg_price_shipping2".tr, style: theme.textTheme.labelLarge), SizedBox(height: 34.v), Text("msg_distance_nearest".tr, style: theme.textTheme.labelLarge), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v,right: 16.h), onTap: () {onTapArrowLeft();}), title: AppbarSubtitle(text: "lbl_sort_by".tr, margin: EdgeInsets.only(left: 12.h))); }

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
