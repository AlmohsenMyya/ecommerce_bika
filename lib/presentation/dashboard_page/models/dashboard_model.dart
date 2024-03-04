import 'offerbanner_item_model.dart';
import '../../../core/app_export.dart';
import 'arrowright_item_model.dart';
import 'flashsale_item_model.dart';
import 'megasale_item_model.dart';
import 'products_item_model.dart';

/// This class defines the variables used in the [dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel {
  Rx<List<OfferbannerItemModel>> offerbannerItemList =
      Rx(List.generate(1, (index) => OfferbannerItemModel()));

  Rx<List<ArrowrightItemModel>> arrowrightItemList = Rx([
    ArrowrightItemModel(
        arrowRight: ImageConstant.imgArrowRight.obs, manShirt: "Man Shirt".obs),
    ArrowrightItemModel(
        arrowRight: ImageConstant.imgManWorkEquipment.obs,
        manShirt: "Office Bag".obs),
    ArrowrightItemModel(
        arrowRight: ImageConstant.imgDressIcon.obs, manShirt: "Dress".obs),
    ArrowrightItemModel(
        arrowRight: ImageConstant.imgWomanBagIcon.obs,
        manShirt: "Woman Bag".obs),
    ArrowrightItemModel(
        arrowRight: ImageConstant.imgManShoesIcon.obs,
        manShirt: "Man Shoes".obs)
  ]);

  Rx<List<FlashsaleItemModel>> flashsaleItemList = Rx([
    FlashsaleItemModel(
        image: ImageConstant.imgProductImage.obs,
        fSNikeAirMax: "FS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    FlashsaleItemModel(
        image: ImageConstant.imgProductImage109x109.obs,
        fSNikeAirMax: "FS - QUILTED MAXI CROS...".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    FlashsaleItemModel(
        image: ImageConstant.imgProductImage1.obs,
        fSNikeAirMax: "FS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs)
  ]);

  Rx<List<MegasaleItemModel>> megasaleItemList = Rx([
    MegasaleItemModel(
        image: ImageConstant.imgProductImage2.obs,
        mSNikeAirMax: "MS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    MegasaleItemModel(
        image: ImageConstant.imgProductImage3.obs,
        mSNikeAirMax: "MS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    MegasaleItemModel(
        image: ImageConstant.imgProductImage4.obs,
        mSNikeAirMax: "MS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs)
  ]);

  Rx<List<ProductsItemModel>> productsItemList = Rx([
    ProductsItemModel(
        image: ImageConstant.imgImageProduct.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    ProductsItemModel(
        image: ImageConstant.imgProductImage2.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    ProductsItemModel(
        image: ImageConstant.imgProductImage133x133.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    ProductsItemModel(
        image: ImageConstant.imgProductImage1.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs)
  ]);
}
