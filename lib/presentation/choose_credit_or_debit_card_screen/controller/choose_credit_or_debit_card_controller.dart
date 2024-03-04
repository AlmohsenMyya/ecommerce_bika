import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/presentation/choose_credit_or_debit_card_screen/models/choose_credit_or_debit_card_model.dart';

/// A controller class for the ChooseCreditOrDebitCardScreen.
///
/// This class manages the state of the ChooseCreditOrDebitCardScreen, including the
/// current chooseCreditOrDebitCardModelObj
class ChooseCreditOrDebitCardController extends GetxController {
  Rx<ChooseCreditOrDebitCardModel> chooseCreditOrDebitCardModelObj =
      ChooseCreditOrDebitCardModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
