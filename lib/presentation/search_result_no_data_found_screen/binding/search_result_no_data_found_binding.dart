import '../controller/search_result_no_data_found_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchResultNoDataFoundScreen.
///
/// This class ensures that the SearchResultNoDataFoundController is created when the
/// SearchResultNoDataFoundScreen is first loaded.
class SearchResultNoDataFoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultNoDataFoundController());
  }
}
