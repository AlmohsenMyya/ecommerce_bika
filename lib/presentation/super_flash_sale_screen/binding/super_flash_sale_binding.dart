import '../controller/super_flash_sale_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SuperFlashSaleScreen.
///
/// This class ensures that the SuperFlashSaleController is created when the
/// SuperFlashSaleScreen is first loaded.
class SuperFlashSaleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuperFlashSaleController());
  }
}
