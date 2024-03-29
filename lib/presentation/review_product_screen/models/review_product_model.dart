import '../../../core/app_export.dart';
import 'reviewproduct_item_model.dart';

/// This class defines the variables used in the [review_product_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewProductModel {
  Rx<List<ReviewproductItemModel>> reviewproductItemList = Rx([
    ReviewproductItemModel(
        jamesLawson: ImageConstant.imgProfilePicture.obs,
        jamesLawson1: "James Lawson".obs,
        description:
            "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites."
                .obs,
        month: "December 10, 2016".obs),
    ReviewproductItemModel(
        jamesLawson: ImageConstant.imgProfilePicture48x48.obs,
        jamesLawson1: "Laura Octavian".obs,
        description:
            "This is really amazing product, i like the design of product, I hope can buy it again!"
                .obs,
        month: "December 10, 2016".obs),
    ReviewproductItemModel(
        jamesLawson: ImageConstant.imgProfilePicture1.obs,
        jamesLawson1: "Jhonson Bridge".obs,
        description:
            "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit"
                .obs,
        month: "December 10, 2016".obs),
    ReviewproductItemModel(
        jamesLawson: ImageConstant.imgProfilePicture48x48.obs,
        jamesLawson1: "Laura Octavian".obs,
        description:
            "This is really amazing product, i like the design of product, I hope can buy it again!"
                .obs,
        month: "December 10, 2016".obs),
    ReviewproductItemModel(
        jamesLawson: ImageConstant.imgProfilePicture1.obs,
        jamesLawson1: "Jhonson Bridge".obs,
        description:
            "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit"
                .obs,
        month: "December 10, 2016".obs)
  ]);
}
