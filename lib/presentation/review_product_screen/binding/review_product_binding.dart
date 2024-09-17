import '../controller/review_product_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReviewProductScreen.
///
/// This class ensures that the ReviewProductController is created when the
/// ReviewProductScreen is first loaded.
class ReviewProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewProductController());
  }
}
