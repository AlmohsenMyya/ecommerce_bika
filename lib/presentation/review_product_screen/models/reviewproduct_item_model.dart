import '../../../core/app_export.dart';

/// This class is used in the [reviewproduct_item_widget] screen.

class ReviewproductItemModel {
  ReviewproductItemModel({
    this.jamesLawson,
    this.jamesLawson1,
    this.description,
    this.month,
    this.id,
  }) {
    jamesLawson = jamesLawson ?? Rx(ImageConstant.imgProfilePicture);
    jamesLawson1 = jamesLawson1 ?? Rx("James Lawson");
    description = description ??
        Rx("air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.");
    month = month ?? Rx("December 10, 2016");
    id = id ?? Rx("");
  }

  Rx<String>? jamesLawson;

  Rx<String>? jamesLawson1;

  Rx<String>? description;

  Rx<String>? month;

  Rx<String>? id;
}
