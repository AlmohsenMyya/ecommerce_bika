import '../../../core/app_export.dart';
import 'favoriteproduct_item_model.dart';

/// This class defines the variables used in the [favorite_product_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FavoriteProductModel {
  Rx<List<FavoriteproductItemModel>> favoriteproductItemList = Rx([
    FavoriteproductItemModel(
        image: ImageConstant.imgProductImage2.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    FavoriteproductItemModel(
        image: ImageConstant.imgProductImage3.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    FavoriteproductItemModel(
        image: ImageConstant.imgProductImage.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    FavoriteproductItemModel(
        image: ImageConstant.imgProductImage109x109.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs)
  ]);
}
