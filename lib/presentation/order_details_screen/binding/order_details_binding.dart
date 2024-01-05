import '../controller/order_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderDetailsScreen.
///
/// This class ensures that the OrderDetailsController is created when the
/// OrderDetailsScreen is first loaded.
class OrderDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailsController());
  }
}
