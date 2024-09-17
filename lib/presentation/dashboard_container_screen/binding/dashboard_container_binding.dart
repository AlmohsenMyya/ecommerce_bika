import '../controller/dashboard_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashboardContainerScreen.
///
/// This class ensures that the DashboardContainerController is created when the
/// DashboardContainerScreen is first loaded.
class DashboardContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardContainerController());
  }
}
