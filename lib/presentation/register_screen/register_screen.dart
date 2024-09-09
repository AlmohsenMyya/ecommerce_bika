import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import 'controller/register_controller.dart';
import 'package:almohsen_ecommerce/core/app_export.dart';
import 'package:almohsen_ecommerce/core/utils/validation_functions.dart';
import 'package:almohsen_ecommerce/widgets/custom_elevated_button.dart';
import 'package:almohsen_ecommerce/widgets/custom_icon_button.dart';
import 'package:almohsen_ecommerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  RegisterScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GetBuilder<RegisterController>(
            builder: (controller) => Scaffold(
                resizeToAvoidBottomInset: false,
                body: Center(
                    child: SingleChildScrollView(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Form(
                            key: _formKey,
                            child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(horizontal: 16.h),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 30.v),
                                      _buildProfilePicture(),
                                      SizedBox(height: 30.v),
                                      _buildArFullName(),
                                      SizedBox(height: 8.v),
                                      _buildEnFullName(),
                                      SizedBox(height: 8.v),
                                      _buildUsernameAr(),
                                      SizedBox(height: 8.v),
                                      _buildUsernameEn(),
                                      SizedBox(height: 8.v),
                                      _buildEmail(),
                                      SizedBox(height: 8.v),
                                      _buildPhoneNumber(),
                                      SizedBox(height: 8.v),
                                      _buildDateOfBirth(),
                                      SizedBox(height: 8.v),
                                      _buildGenderSelection(),
                                      SizedBox(height: 8.v),
                                      _buildPassword(),
                                      SizedBox(height: 8.v),
                                      _buildPassword1(),
                                      SizedBox(height: 20.v),
                                      _buildSignUp(),
                                      SizedBox(height: 20.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_have_an_account2".tr,
                                                style:
                                                    theme.textTheme.bodySmall),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "lbl_sign_in".tr,
                                                style: CustomTextStyles
                                                    .labelLargePrimary_1)
                                          ]),
                                          textAlign: TextAlign.left),
                                      SizedBox(height: 10.v),
                                      _buildPageHeader(),
                                    ]))))))));
  }

  /// Section Widget
  Widget _buildGenderSelection() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        // prefixIconConstraints: prefixConstraints,
        // suffixIcon: suffix,
        // suffixIconConstraints: suffixConstraints,
        isDense: true,
        fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        // filled: filled,
        border:
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.h),
              borderSide: BorderSide(
                color: appTheme.blue50,
                width: 1,
              ),
            ),
        enabledBorder:
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.h),
              borderSide: BorderSide(
                color: appTheme.blue50,
                width: 1,
              ),
            ),
        focusedBorder:
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.h),
              borderSide: BorderSide(
                color: appTheme.blue50,
                width: 1,
              ),
            ),
        // labelText: "lbl_gender".tr,
        labelStyle: TextStyle(color: Colors.blue),
        prefixIcon: Container(
          margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgGenderIcon,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v),
      ),
      value: controller.selectedGender.value.isNotEmpty
          ? controller.selectedGender.value
          : null,
      items: [
        DropdownMenuItem(
          value: "male",
          child: Text("lbl_male".tr),
        ),
        DropdownMenuItem(
          value: "female",
          child: Text("lbl_female".tr),
        ),
      ],
      onChanged: (String? value) {
        controller.selectedGender.value = value ?? "";
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "err_msg_please_select_gender".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildUsernameEn() {
    return CustomTextFormField(
        controller: controller.usernameEnController,
        hintText: "lbl_username_en".tr,
        labelText: "lbl_username_en".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildUsernameAr() {
    return CustomTextFormField(
        controller: controller.usernameArController,
        hintText: "lbl_username_ar".tr,
        labelText: "lbl_username_ar".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
        controller: controller.phoneNumberController,
        hintText: "lbl_phone_number".tr,
        labelText: "lbl_phone_number".tr,
        textInputType: TextInputType.phone,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock, //fake
                // imagePath: ImageConstant.imgPhone,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (value == null || value.isEmpty || !isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget - Date of Birth
  Widget _buildDateOfBirth() {
    return GestureDetector(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: Get.context!,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (pickedDate != null) {
          controller.dateOfBirthController.text =
              DateFormat('yyyy-MM-dd').format(pickedDate);
        }
      },
      child: AbsorbPointer(
        child: CustomTextFormField(
          controller: controller.dateOfBirthController,
          hintText: "lbl_date_of_birth".tr,
          labelText: "lbl_date_of_birth".tr,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgLock, //fake
                  // imagePath: ImageConstant.imgCalendar,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "err_msg_please_enter_valid_date_of_birth".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v),
        ),
      ),
    );
  }

  /// Section Widget - Profile Picture Picker
  Widget _buildProfilePicture() {
    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            final pickedFile =
                await ImagePicker().pickImage(source: ImageSource.gallery);
            if (pickedFile != null) {
              controller.profileImage = File(pickedFile.path);
              controller.update(); // To refresh UI
            }
          },
          child: CircleAvatar(
            radius: 50,
            backgroundImage: controller.profileImage != null
                ? FileImage(controller.profileImage!)
                : AssetImage(
                    ImageConstant.imgLock, //fake
                    // ImageConstant.imgPlaceholder
                  ) as ImageProvider,
            child: controller.profileImage == null
                ? Icon(Icons.camera_alt, size: 50)
                : null,
          ),
        ),
        SizedBox(height: 10.v),
        Text("lbl_select_profile_picture".tr, style: theme.textTheme.bodySmall),
      ],
    );
  }

  /// Section Widget
  Widget _buildPageHeader() {
    return Column(children: [
      CustomIconButton(
          height: 170.adaptSize,
          width: 170.adaptSize,
          padding: EdgeInsets.all(0.h),
          // decoration: IconButtonStyleHelper.fillPrimary,
          child: CustomImageView(imagePath: ImageConstant.imgClose , )),
      SizedBox(height: 16.v),
      // Text("msg_let_s_get_started".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 9.v),
      // Text("msg_create_an_new_account".tr, style: theme.textTheme.bodySmall)
    ]);
  }

  /// Section Widget
  Widget _buildArFullName() {
    return CustomTextFormField(
        controller: controller.fullNameArController,
        hintText: "lbl_ar_full_name".tr,
        labelText: "lbl_ar_full_name".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildEnFullName() {
    return CustomTextFormField(
        controller: controller.fullNameEnController,
        hintText: "lbl_en_full_name".tr,
        labelText: "lbl_en_full_name".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_your_email".tr,
        labelText: "lbl_your_email".tr,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEmailIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        labelText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildPassword1() {
    return CustomTextFormField(
        controller: controller.confirmPasswordController,
        hintText: "lbl_password_again".tr,
        labelText: "lbl_password_again".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        onPressed: () async {
          await controller.registerUser();
        });
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapSignUp() {
    Get.toNamed(
      AppRoutes.dashboardContainerScreen,
    );
  }
}
