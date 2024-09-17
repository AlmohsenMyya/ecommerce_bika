import '../controller/credit_card_and_debit_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreditCardAndDebitScreen.
///
/// This class ensures that the CreditCardAndDebitController is created when the
/// CreditCardAndDebitScreen is first loaded.
class CreditCardAndDebitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreditCardAndDebitController());
  }
}
