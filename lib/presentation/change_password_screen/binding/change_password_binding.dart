import '../controller/change_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangePasswordScreen.
///
/// This class ensures that the ChangePasswordController is created when the
/// ChangePasswordScreen is first loaded.
class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordController());
  }
}
