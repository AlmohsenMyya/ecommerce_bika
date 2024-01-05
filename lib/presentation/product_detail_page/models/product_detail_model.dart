import 'blue_item_model.dart';import '../../../core/app_export.dart';import 'products1_item_model.dart';import 'recomended_item_model.dart';/// This class defines the variables used in the [product_detail_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailModel {Rx<List<BlueItemModel>> blueItemList = Rx(List.generate(6,(index) => BlueItemModel()));

Rx<List<Products1ItemModel>> products1ItemList = Rx([Products1ItemModel(productPicture:ImageConstant.imgProductPicture02.obs),Products1ItemModel(productPicture:ImageConstant.imgProductPicture03.obs),Products1ItemModel(productPicture:ImageConstant.imgProductPicture01.obs)]);

Rx<List<RecomendedItemModel>> recomendedItemList = Rx([RecomendedItemModel(image:ImageConstant.imgProductImage.obs,fSNikeAirMax: "FS - Nike Air Max 270 React...".obs,price: "299,43".obs,price1: "534,33".obs,offer: "24% Off".obs),RecomendedItemModel(image:ImageConstant.imgProductImage109x109.obs,fSNikeAirMax: "FS - QUILTED MAXI CROS...".obs,price: "299,43".obs,price1: "534,33".obs,offer: "24% Off".obs),RecomendedItemModel(image:ImageConstant.imgProductImage1.obs,fSNikeAirMax: "FS - Nike Air Max 270 React...".obs,price: "299,43".obs,price1: "534,33".obs,offer: "24% Off".obs)]);

 }
