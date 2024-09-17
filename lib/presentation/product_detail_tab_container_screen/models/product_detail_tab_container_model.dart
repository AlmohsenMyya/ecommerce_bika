import 'widget_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [product_detail_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailTabContainerModel {
  Rx<List<WidgetItemModel>> widgetItemList =
      Rx(List.generate(1, (index) => WidgetItemModel()));
}
