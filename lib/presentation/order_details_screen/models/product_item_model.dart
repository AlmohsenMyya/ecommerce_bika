import '../../../core/app_export.dart';/// This class is used in the [product_item_widget] screen.
class ProductItemModel {ProductItemModel({this.image, this.nikeAirZoomPegasus, this.image1, this.price, this.one, this.id, }) { image = image  ?? Rx(ImageConstant.imgImageProduct);nikeAirZoomPegasus = nikeAirZoomPegasus  ?? Rx("Nike Air Zoom Pegasus 36 Miami");image1 = image1  ?? Rx(ImageConstant.imgLoveIconPink300);price = price  ?? Rx("299,43");one = one  ?? Rx("1");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? nikeAirZoomPegasus;

Rx<String>? image1;

Rx<String>? price;

Rx<String>? one;

Rx<String>? id;

 }
