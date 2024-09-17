import '../controller/search_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchScreen.
///
/// This class ensures that the SearchController is created when the
/// SearchScreen is first loaded.
class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchController());
  }
}
