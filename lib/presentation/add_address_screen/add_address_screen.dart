import 'controller/add_address_controller.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/core/utils/validation_functions.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:dhiwise_ecommerce/widgets/custom_elevated_button.dart';
import 'package:dhiwise_ecommerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddAddressScreen extends GetWidget<AddAddressController> {
  AddAddressScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    child: Column(children: [
                      SizedBox(height: 29.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, right: 16.h, bottom: 5.v),
                                  child: Column(children: [
                                    _buildCountry(),
                                    SizedBox(height: 22.v),
                                    _buildFirstName(),
                                    SizedBox(height: 22.v),
                                    _buildLastName(),
                                    SizedBox(height: 23.v),
                                    _buildStreetAddress(),
                                    SizedBox(height: 21.v),
                                    _buildStreetAddress2(),
                                    SizedBox(height: 22.v),
                                    _buildCity(),
                                    SizedBox(height: 23.v),
                                    _buildStateProvinceRegion(),
                                    SizedBox(height: 24.v),
                                    _buildZipCode(),
                                    SizedBox(height: 23.v),
                                    _buildPhoneNumber()
                                  ]))))
                    ]))),
            bottomNavigationBar: _buildAddAddress()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(
                left: 16.h, top: 15.v, bottom: 16.v, right: 16.h),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_add_address".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildCountry() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_country_or_region".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      CustomTextFormField(
          controller: controller.countryController,
          hintText: "msg_enter_the_country".tr,
          borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildFirstName() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_first_name".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: controller.firstNameController,
          hintText: "msg_enter_the_first".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildLastName() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_last_name".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 12.v),
      CustomTextFormField(
          controller: controller.lastNameController,
          hintText: "msg_enter_the_last_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildStreetAddress() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_street_address".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 12.v),
      CustomTextFormField(
          controller: controller.streetaddressController,
          hintText: "msg_enter_the_street".tr,
          borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildStreetAddress2() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_street_address_2".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 16.v),
      CustomTextFormField(
          controller: controller.streetaddressController1,
          hintText: "msg_enter_the_street2".tr,
          borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildCity() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_city".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      CustomTextFormField(
          controller: controller.cityController,
          hintText: "lbl_enter_the_city".tr,
          borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildStateProvinceRegion() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_state_province_region".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 12.v),
      CustomTextFormField(
          controller: controller.oldPasswordController,
          hintText: "msg_enter_the_state".tr,
          borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildZipCode() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_zip_code".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      CustomTextFormField(
          controller: controller.zipcodeController,
          hintText: "msg_enter_the_zip_code".tr,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_phone_number".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 12.v),
      CustomTextFormField(
          controller: controller.phoneNumberController,
          hintText: "msg_enter_the_phone".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
          contentPadding:
              EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildAddAddress() {
    return CustomElevatedButton(
        text: "lbl_add_address".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
