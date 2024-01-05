import '../controller/sort_by_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SortByScreen.
///
/// This class ensures that the SortByController is created when the
/// SortByScreen is first loaded.
class SortByBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SortByController());
  }
}
