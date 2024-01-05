import 'buyingformate_item_model.dart';import 'itemlocation_item_model.dart';import 'showonly_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [filter_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel {Rx<List<BuyingformateItemModel>> buyingformateItemList = Rx(List.generate(5,(index) =>BuyingformateItemModel()));

Rx<List<ItemlocationItemModel>> itemlocationItemList = Rx(List.generate(4,(index) =>ItemlocationItemModel()));

Rx<List<ShowonlyItemModel>> showonlyItemList = Rx(List.generate(11,(index) =>ShowonlyItemModel()));

 }
