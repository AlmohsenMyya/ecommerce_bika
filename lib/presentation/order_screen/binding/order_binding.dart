import '../controller/order_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderScreen.
///
/// This class ensures that the OrderController is created when the
/// OrderScreen is first loaded.
class OrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderController());
  }
}
