import 'controller/login_controller.dart';import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/core/utils/validation_functions.dart';import 'package:dhiwise_ecommerce/widgets/custom_elevated_button.dart';import 'package:dhiwise_ecommerce/widgets/custom_icon_button.dart';import 'package:dhiwise_ecommerce/widgets/custom_outlined_button.dart';import 'package:dhiwise_ecommerce/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:dhiwise_ecommerce/domain/googleauth/google_auth_helper.dart';import 'package:dhiwise_ecommerce/domain/facebookauth/facebook_auth_helper.dart';
// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {LoginScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.only(left: 16.h, top: 68.v, right: 16.h), child: Column(children: [_buildPageHeader(), SizedBox(height: 28.v), CustomTextFormField(controller: controller.emailController, hintText: "lbl_your_email".tr, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgEmailIcon, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v)), SizedBox(height: 10.v), CustomTextFormField(controller: controller.passwordController, hintText: "lbl_password".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v)), SizedBox(height: 16.v), CustomElevatedButton(text: "lbl_sign_in".tr, onPressed: () {onTapSignIn();}), SizedBox(height: 18.v), _buildOrLine(), SizedBox(height: 16.v), _buildSocialAuthentication(), SizedBox(height: 17.v), Text("msg_forgot_password".tr, style: CustomTextStyles.labelLargePrimary), SizedBox(height: 7.v), GestureDetector(onTap: () {onTapTxtDonthaveanaccount();}, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_don_t_have_an_account2".tr, style: theme.textTheme.bodySmall), TextSpan(text: " "), TextSpan(text: "lbl_register".tr, style: CustomTextStyles.labelLargePrimary_1)]), textAlign: TextAlign.left)), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
Widget _buildPageHeader() { return Column(children: [CustomIconButton(height: 72.adaptSize, width: 72.adaptSize, padding: EdgeInsets.all(20.h), decoration: IconButtonStyleHelper.fillPrimary, child: CustomImageView(imagePath: ImageConstant.imgClose)), SizedBox(height: 16.v), Text("msg_welcome_to_e_com".tr, style: theme.textTheme.titleMedium), SizedBox(height: 10.v), Text("msg_sign_in_to_continue".tr, style: theme.textTheme.bodySmall)]); } 
/// Section Widget
Widget _buildOrLine() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 10.v, bottom: 9.v), child: SizedBox(width: 134.h, child: Divider())), Text("lbl_or".tr, style: CustomTextStyles.titleSmallBluegray300_1), Padding(padding: EdgeInsets.only(top: 10.v, bottom: 9.v), child: SizedBox(width: 137.h, child: Divider()))]); } 
/// Section Widget
Widget _buildSocialAuthentication() { return Column(children: [CustomOutlinedButton(text: "msg_login_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 30.h), child: CustomImageView(imagePath: ImageConstant.imgGoogleIcon, height: 24.adaptSize, width: 24.adaptSize)), onPressed: () {onTapLoginWithGoogle();}), SizedBox(height: 8.v), CustomOutlinedButton(text: "msg_login_with_facebook".tr, leftIcon: Container(margin: EdgeInsets.only(right: 30.h), child: CustomImageView(imagePath: ImageConstant.imgFacebookIcon, height: 24.adaptSize, width: 24.adaptSize)), onPressed: () {onTapLoginWithFacebook();})]); } 
/// Navigates to the dashboardContainerScreen when the action is triggered.
onTapSignIn() { Get.toNamed(AppRoutes.dashboardContainerScreen, ); } 
onTapLoginWithGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
onTapLoginWithFacebook() async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              Get.snackbar('Error', onError.toString());
            });
             } 
/// Navigates to the registerScreen when the action is triggered.
onTapTxtDonthaveanaccount() { Get.toNamed(AppRoutes.registerScreen, ); } 
 }
