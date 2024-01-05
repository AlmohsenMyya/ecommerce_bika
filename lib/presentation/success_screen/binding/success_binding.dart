import '../controller/success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SuccessScreen.
///
/// This class ensures that the SuccessController is created when the
/// SuccessScreen is first loaded.
class SuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessController());
  }
}
