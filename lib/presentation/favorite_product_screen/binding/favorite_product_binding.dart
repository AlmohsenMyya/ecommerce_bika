import '../controller/favorite_product_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FavoriteProductScreen.
///
/// This class ensures that the FavoriteProductController is created when the
/// FavoriteProductScreen is first loaded.
class FavoriteProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteProductController());
  }
}
