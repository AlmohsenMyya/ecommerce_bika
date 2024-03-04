import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/presentation/credit_card_and_debit_screen/models/credit_card_and_debit_model.dart';

/// A controller class for the CreditCardAndDebitScreen.
///
/// This class manages the state of the CreditCardAndDebitScreen, including the
/// current creditCardAndDebitModelObj
class CreditCardAndDebitController extends GetxController {
  Rx<CreditCardAndDebitModel> creditCardAndDebitModelObj =
      CreditCardAndDebitModel().obs;
}
