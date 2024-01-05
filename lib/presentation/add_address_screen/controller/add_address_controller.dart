import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/presentation/add_address_screen/models/add_address_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddAddressScreen.
///
/// This class manages the state of the AddAddressScreen, including the
/// current addAddressModelObj
class AddAddressController extends GetxController {TextEditingController countryController = TextEditingController();

TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController streetaddressController = TextEditingController();

TextEditingController streetaddressController1 = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController oldPasswordController = TextEditingController();

TextEditingController zipcodeController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<AddAddressModel> addAddressModelObj = AddAddressModel().obs;

@override void onClose() { super.onClose(); countryController.dispose(); firstNameController.dispose(); lastNameController.dispose(); streetaddressController.dispose(); streetaddressController1.dispose(); cityController.dispose(); oldPasswordController.dispose(); zipcodeController.dispose(); phoneNumberController.dispose(); } 
 }
