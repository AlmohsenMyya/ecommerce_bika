import '../controller/lailyfa_febrina_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LailyfaFebrinaCardScreen.
///
/// This class ensures that the LailyfaFebrinaCardController is created when the
/// LailyfaFebrinaCardScreen is first loaded.
class LailyfaFebrinaCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LailyfaFebrinaCardController());
  }
}
