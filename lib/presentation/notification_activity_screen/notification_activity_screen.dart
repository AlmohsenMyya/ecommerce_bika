import 'controller/notification_activity_controller.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationActivityScreen
    extends GetWidget<NotificationActivityController> {
  const NotificationActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(children: [
                  _buildActivityDetails(
                      transactionNike: "msg_transaction_nike".tr,
                      description: "msg_culpa_cillum_consectetur".tr,
                      time: "msg_april_30_2014_1_01".tr,
                      onTapTransactionIcon: () {
                        onTapTransactionIcon();
                      }),
                  _buildActivityDetails(
                      transactionNike: "msg_transaction_nike2".tr,
                      description: "msg_culpa_cillum_consectetur".tr,
                      time: "msg_april_30_2014_1_01".tr,
                      onTapTransactionIcon: () {
                        onTapTransactionIcon();
                      }),
                  SizedBox(height: 5.v),
                  _buildActivityDetails(
                      transactionNike: "msg_transaction_nike3".tr,
                      description: "msg_culpa_cillum_consectetur".tr,
                      time: "msg_april_30_2014_1_01".tr,
                      onTapTransactionIcon: () {
                        onTapTransactionIcon();
                      })
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_activity".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildActivityDetails({
    required String transactionNike,
    required String description,
    required String time,
    Function? onTapTransactionIcon,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                child: CustomImageView(
                    imagePath: ImageConstant.imgTransactionIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 94.v),
                    onTap: () {
                      onTapTransactionIcon!.call();
                    }),
              ),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(transactionNike,
                                style: theme.textTheme.titleSmall!.copyWith(
                                    color: theme.colorScheme.onPrimary
                                        .withOpacity(1))),
                            SizedBox(height: 11.v),
                            SizedBox(
                                width: 305.h,
                                child: Text(description,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                        color: appTheme.blueGray300,
                                        height: 1.80))),
                            SizedBox(height: 5.v),
                            Text(time,
                                style: CustomTextStyles.bodySmallOnPrimary10
                                    .copyWith(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1)))
                          ])))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapTransactionIcon() {
    Get.back();
  }
}
