import '../controller/ship_to_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShipToScreen.
///
/// This class ensures that the ShipToController is created when the
/// ShipToScreen is first loaded.
class ShipToBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShipToController());
  }
}
