import '../../../core/app_export.dart';
import 'cart_item_model.dart';

/// This class defines the variables used in the [cart_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {
  Rx<List<CartItemModel>> cartItemList = Rx([
    CartItemModel(
        nikeAirZoomPegasus: "Nike Air Zoom Pegasus 36 Miami".obs,
        price: "299,43".obs,
        one: "1".obs),
    CartItemModel(
        nikeAirZoomPegasus: "Nike Air Zoom Pegasus 36 Miami".obs,
        price: "299,43".obs,
        one: "1".obs)
  ]);
}
