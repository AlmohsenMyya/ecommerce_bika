import '../controller/add_payment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPaymentScreen.
///
/// This class ensures that the AddPaymentController is created when the
/// AddPaymentScreen is first loaded.
class AddPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPaymentController());
  }
}
