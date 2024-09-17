import '../../../core/app_export.dart';
import 'product_item_model.dart';

/// This class defines the variables used in the [order_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderDetailsModel {
  Rx<List<ProductItemModel>> productItemList = Rx([
    ProductItemModel(
        image: ImageConstant.imgImageProduct.obs,
        nikeAirZoomPegasus: "Nike Air Zoom Pegasus 36 Miami".obs,
        image1: ImageConstant.imgLoveIconPink300.obs,
        price: "299,43".obs,
        one: "1".obs),
    ProductItemModel(
        image: ImageConstant.imgProductImage1.obs,
        nikeAirZoomPegasus: "Nike Air Zoom Pegasus 36 Miami".obs,
        image1: ImageConstant.imgLoveIcon.obs,
        price: "299,43".obs,
        one: "1".obs)
  ]);
}
