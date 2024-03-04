import 'package:dhiwise_ecommerce/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'searchresult_item_model.dart';

/// This class defines the variables used in the [search_result_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SearchresultItemModel>> searchresultItemList = Rx([
    SearchresultItemModel(
        image: ImageConstant.imgProductImage1.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    SearchresultItemModel(
        image: ImageConstant.imgImageProduct.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    SearchresultItemModel(
        image: ImageConstant.imgProductImage.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    SearchresultItemModel(
        image: ImageConstant.imgProductImage3.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    SearchresultItemModel(
        image: ImageConstant.imgImageProduct.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs),
    SearchresultItemModel(
        image: ImageConstant.imgProductImage1.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        price1: "534,33".obs,
        offer: "24% Off".obs)
  ]);
}
