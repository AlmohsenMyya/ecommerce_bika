import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/presentation/register_screen/models/register_model.dart';import 'package:flutter/material.dart';/// A controller class for the RegisterScreen.
///
/// This class manages the state of the RegisterScreen, including the
/// current registerModelObj
class RegisterController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController passwordController1 = TextEditingController();

Rx<RegisterModel> registerModelObj = RegisterModel().obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); emailController.dispose(); passwordController.dispose(); passwordController1.dispose(); } 
 }
