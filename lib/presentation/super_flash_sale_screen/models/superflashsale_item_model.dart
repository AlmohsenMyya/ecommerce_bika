import '../../../core/app_export.dart';

/// This class is used in the [superflashsale_item_widget] screen.

class SuperflashsaleItemModel {
  SuperflashsaleItemModel({
    this.image,
    this.offer,
    this.clock,
    this.text,
    this.minutes,
    this.text1,
    this.secounds,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgPromotionImage);
    offer = offer ?? Rx("Super Flash Sale\n50% Off");
    clock = clock ?? Rx("08");
    text = text ?? Rx(":");
    minutes = minutes ?? Rx("34");
    text1 = text1 ?? Rx(":");
    secounds = secounds ?? Rx("52");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? offer;

  Rx<String>? clock;

  Rx<String>? text;

  Rx<String>? minutes;

  Rx<String>? text1;

  Rx<String>? secounds;

  Rx<String>? id;
}
