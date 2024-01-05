import 'controller/notification_controller.dart';import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_subtitle.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class NotificationScreen extends GetWidget<NotificationController> {const NotificationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 12.v), child: Column(children: [_buildNotificationOption(listIcon: ImageConstant.imgSort, feed: "lbl_offer".tr, onTapNotificationOption: () {onTapNotificationOption();}), _buildNotificationOption(listIcon: ImageConstant.imgListIcon, feed: "lbl_feed".tr), SizedBox(height: 5.v), _buildNotificationOption(listIcon: ImageConstant.imgNotificationIconPrimary, feed: "lbl_acivity".tr, onTapNotificationOption: () {onTapNotificationOption1();})])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitle(text: "lbl_notification".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Common widget
Widget _buildNotificationOption({required String listIcon, required String feed, Function? onTapNotificationOption, }) { return GestureDetector(onTap: () {onTapNotificationOption!.call();}, child: Container(width: double.maxFinite, padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: listIcon, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v), child: Text(feed, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))))]))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the notificationOfferScreen when the action is triggered.
onTapNotificationOption() { Get.toNamed(AppRoutes.notificationOfferScreen, ); } 
/// Navigates to the notificationActivityScreen when the action is triggered.
onTapNotificationOption1() { Get.toNamed(AppRoutes.notificationActivityScreen, ); } 
 }
