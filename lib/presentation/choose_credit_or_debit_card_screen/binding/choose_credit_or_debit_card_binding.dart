import '../controller/choose_credit_or_debit_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseCreditOrDebitCardScreen.
///
/// This class ensures that the ChooseCreditOrDebitCardController is created when the
/// ChooseCreditOrDebitCardScreen is first loaded.
class ChooseCreditOrDebitCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseCreditOrDebitCardController());
  }
}
