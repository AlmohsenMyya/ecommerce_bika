import '../controller/search_result_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchResultScreen.
///
/// This class ensures that the SearchResultController is created when the
/// SearchResultScreen is first loaded.
class SearchResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultController());
  }
}
