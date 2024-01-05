import '../controller/add_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddCardScreen.
///
/// This class ensures that the AddCardController is created when the
/// AddCardScreen is first loaded.
class AddCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCardController());
  }
}
