import 'controller/add_card_controller.dart';import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/core/utils/validation_functions.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_subtitle.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';import 'package:dhiwise_ecommerce/widgets/custom_elevated_button.dart';import 'package:dhiwise_ecommerce/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class AddCardScreen extends GetWidget<AddCardController> {AddCardScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v), child: Column(children: [_buildCardNumber(), SizedBox(height: 24.v), _buildExpirationDate(), SizedBox(height: 29.v), _buildSecurityCode(), SizedBox(height: 23.v), _buildCardHolder(), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildAddCard())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v,right: 16.h), onTap: () {onTapArrowLeft();}), title: AppbarSubtitle(text: "lbl_add_card".tr, margin: EdgeInsets.only(left: 12.h))); }
/// Section Widget
Widget _buildCardNumber() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_card_number".tr, style: theme.textTheme.titleSmall), SizedBox(height: 12.v), CustomTextFormField(controller: controller.cardNumberController, hintText: "msg_enter_card_number".tr, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;})]); } 
/// Section Widget
Widget _buildExpirationDate() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_expiration_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v), CustomTextFormField(controller: controller.expirationDateController, hintText: "lbl_expiration_date".tr)]); } 
/// Section Widget
Widget _buildSecurityCode() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_security_code".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v), CustomTextFormField(controller: controller.securityCodeController, hintText: "lbl_security_code".tr)]); } 
/// Section Widget
Widget _buildCardHolder() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_card_holder2".tr, style: theme.textTheme.titleSmall), SizedBox(height: 12.v), CustomTextFormField(controller: controller.cardNumberController1, hintText: "msg_enter_card_number".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;})]); } 
/// Section Widget
Widget _buildAddCard() { return CustomElevatedButton(text: "lbl_add_card".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), onPressed: () {onTapAddCard();}); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the creditCardAndDebitScreen when the action is triggered.
onTapAddCard() { Get.toNamed(AppRoutes.creditCardAndDebitScreen, ); } 
 }
