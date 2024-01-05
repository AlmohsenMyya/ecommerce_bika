import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/presentation/lailyfa_febrina_card_screen/models/lailyfa_febrina_card_model.dart';import 'package:flutter/material.dart';/// A controller class for the LailyfaFebrinaCardScreen.
///
/// This class manages the state of the LailyfaFebrinaCardScreen, including the
/// current lailyfaFebrinaCardModelObj
class LailyfaFebrinaCardController extends GetxController {TextEditingController cardNumberController = TextEditingController();

TextEditingController expirationDateController = TextEditingController();

TextEditingController securityCodeController = TextEditingController();

TextEditingController cardHolderNameController = TextEditingController();

Rx<LailyfaFebrinaCardModel> lailyfaFebrinaCardModelObj = LailyfaFebrinaCardModel().obs;

@override void onClose() { super.onClose(); cardNumberController.dispose(); expirationDateController.dispose(); securityCodeController.dispose(); cardHolderNameController.dispose(); } 
 }
