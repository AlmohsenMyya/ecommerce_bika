import '../../../core/app_export.dart';
import 'categories_item_model.dart';
import 'categories1_item_model.dart';

/// This class defines the variables used in the [explore_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreModel {
  Rx<List<CategoriesItemModel>> categoriesItemList = Rx([
    CategoriesItemModel(
        manWorkEquipment: ImageConstant.imgManWorkEquipment.obs,
        officeBag: "Office Bag".obs),
    CategoriesItemModel(
        manWorkEquipment: ImageConstant.imgArrowRight.obs,
        officeBag: "Shirt".obs),
    CategoriesItemModel(
        manWorkEquipment: ImageConstant.imgManTShirtIcon.obs,
        officeBag: "T-Shirt".obs),
    CategoriesItemModel(
        manWorkEquipment: ImageConstant.imgManShoesIcon.obs,
        officeBag: "Shoes".obs),
    CategoriesItemModel(
        manWorkEquipment: ImageConstant.imgManPantsIcon.obs,
        officeBag: "Pants".obs),
    CategoriesItemModel(
        manWorkEquipment: ImageConstant.imgManUnderwearIcon.obs,
        officeBag: "Underwear".obs)
  ]);

  Rx<List<Categories1ItemModel>> categories1ItemList = Rx([
    Categories1ItemModel(
        womanTShirtIcon: ImageConstant.imgWomanTShirtIcon.obs,
        tShirt: "T-Shirt".obs),
    Categories1ItemModel(
        womanTShirtIcon: ImageConstant.imgDressIcon.obs, tShirt: "Dress".obs),
    Categories1ItemModel(
        womanTShirtIcon: ImageConstant.imgWomanPantsIcon.obs,
        tShirt: "Pants".obs),
    Categories1ItemModel(
        womanTShirtIcon: ImageConstant.imgSkirtIcon.obs, tShirt: "Skirt".obs),
    Categories1ItemModel(
        womanTShirtIcon: ImageConstant.imgWomanBagIcon.obs, tShirt: "Bag".obs),
    Categories1ItemModel(
        womanTShirtIcon: ImageConstant.imgHighHeelsIcon.obs,
        tShirt: "Heels".obs),
    Categories1ItemModel(
        womanTShirtIcon: ImageConstant.imgBikiniIcon.obs, tShirt: "Bikini".obs)
  ]);
}
