import 'controller/write_review_fill_controller.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:dhiwise_ecommerce/widgets/custom_elevated_button.dart';
import 'package:dhiwise_ecommerce/widgets/custom_rating_bar.dart';
import 'package:dhiwise_ecommerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class WriteReviewFillScreen extends GetWidget<WriteReviewFillController> {
  const WriteReviewFillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 27.v),
                child: Column(children: [
                  _buildReview(),
                  SizedBox(height: 22.v),
                  _buildWriteReview(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildWriteReview1()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_write_review".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildReview() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
          width: 343.h,
          child: Text("msg_please_write_overall".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall!.copyWith(height: 1.50))),
      SizedBox(height: 13.v),
      CustomRatingBar(initialRating: 4, itemSize: 32)
    ]);
  }

  /// Section Widget
  Widget _buildWriteReview() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_write_your_review".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: controller.addReviewController,
          hintText: "lbl_add_review".tr,
          hintStyle: CustomTextStyles.labelLargeBluegray300,
          textInputAction: TextInputAction.done,
          maxLines: 8,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v))
    ]);
  }

  /// Section Widget
  Widget _buildWriteReview1() {
    return CustomElevatedButton(
        text: "lbl_write_review".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
