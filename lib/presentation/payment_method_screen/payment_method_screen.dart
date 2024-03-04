import 'controller/payment_method_controller.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  _buildPaymentOption(
                      paypalIcon: ImageConstant.imgCreditCardIcon,
                      paypal: "msg_credit_card_or_debit".tr,
                      onTapPaymentOption: () {
                        onTapPaymentOption();
                      }),
                  _buildPaymentOption(
                      paypalIcon: ImageConstant.imgPaypalIcon,
                      paypal: "lbl_paypal".tr),
                  SizedBox(height: 5.v),
                  _buildPaymentOption(
                      paypalIcon: ImageConstant.imgBankIcon,
                      paypal: "lbl_bank_transfer".tr)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(
                left: 16.h, top: 14.v, bottom: 17.v, right: 16.h),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_payment".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildPaymentOption({
    required String paypalIcon,
    required String paypal,
    Function? onTapPaymentOption,
  }) {
    return GestureDetector(
        onTap: () {
          onTapPaymentOption!.call();
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Row(children: [
              CustomImageView(
                  imagePath: paypalIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 4.v, right: 16.h),
                  child: Text(paypal,
                      style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onPrimary.withOpacity(1))))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the chooseCreditOrDebitCardScreen when the action is triggered.
  onTapPaymentOption() {
    Get.toNamed(
      AppRoutes.chooseCreditOrDebitCardScreen,
    );
  }
}
