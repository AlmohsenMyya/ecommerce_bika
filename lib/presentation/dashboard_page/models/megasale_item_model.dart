import '../../../core/app_export.dart';/// This class is used in the [megasale_item_widget] screen.
class MegasaleItemModel {MegasaleItemModel({this.image, this.mSNikeAirMax, this.price, this.price1, this.offer, this.id, }) { image = image  ?? Rx(ImageConstant.imgProductImage2);mSNikeAirMax = mSNikeAirMax  ?? Rx("MS - Nike Air Max 270 React...");price = price  ?? Rx("299,43");price1 = price1  ?? Rx("534,33");offer = offer  ?? Rx("24% Off");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? mSNikeAirMax;

Rx<String>? price;

Rx<String>? price1;

Rx<String>? offer;

Rx<String>? id;

 }
