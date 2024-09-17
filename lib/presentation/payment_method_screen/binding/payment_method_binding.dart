import '../controller/payment_method_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentMethodScreen.
///
/// This class ensures that the PaymentMethodController is created when the
/// PaymentMethodScreen is first loaded.
class PaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentMethodController());
  }
}
