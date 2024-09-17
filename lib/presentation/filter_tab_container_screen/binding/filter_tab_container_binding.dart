import '../controller/filter_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FilterTabContainerScreen.
///
/// This class ensures that the FilterTabContainerController is created when the
/// FilterTabContainerScreen is first loaded.
class FilterTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilterTabContainerController());
  }
}
