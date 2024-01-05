import '../../../core/app_export.dart';/// This class is used in the [products1_item_widget] screen.
class Products1ItemModel {Products1ItemModel({this.productPicture, this.id, }) { productPicture = productPicture  ?? Rx(ImageConstant.imgProductPicture02);id = id  ?? Rx(""); }

Rx<String>? productPicture;

Rx<String>? id;

 }
