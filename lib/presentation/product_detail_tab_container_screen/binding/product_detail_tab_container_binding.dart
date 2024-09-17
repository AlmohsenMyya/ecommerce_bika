import '../controller/product_detail_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductDetailTabContainerScreen.
///
/// This class ensures that the ProductDetailTabContainerController is created when the
/// ProductDetailTabContainerScreen is first loaded.
class ProductDetailTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailTabContainerController());
  }
}
