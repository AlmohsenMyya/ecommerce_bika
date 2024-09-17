import '../controller/list_category_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ListCategoryScreen.
///
/// This class ensures that the ListCategoryController is created when the
/// ListCategoryScreen is first loaded.
class ListCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListCategoryController());
  }
}
