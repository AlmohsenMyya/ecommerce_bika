import '../../../core/app_export.dart';/// This class is used in the [categories1_item_widget] screen.
class Categories1ItemModel {Categories1ItemModel({this.womanTShirtIcon, this.tShirt, this.id, }) { womanTShirtIcon = womanTShirtIcon  ?? Rx(ImageConstant.imgWomanTShirtIcon);tShirt = tShirt  ?? Rx("T-Shirt");id = id  ?? Rx(""); }

Rx<String>? womanTShirtIcon;

Rx<String>? tShirt;

Rx<String>? id;

 }
