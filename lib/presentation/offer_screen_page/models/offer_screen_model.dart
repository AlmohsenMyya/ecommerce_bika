import '../../../core/app_export.dart';
import 'offerscreen_item_model.dart';

/// This class defines the variables used in the [offer_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OfferScreenModel {
  Rx<List<OfferscreenItemModel>> offerscreenItemList = Rx([
    OfferscreenItemModel(
        image: ImageConstant.imgPromotionImage.obs,
        offer: "Super Flash Sale\n50% Off".obs,
        hours: "08".obs,
        text: ":".obs,
        minutes: "34".obs,
        text1: ":".obs,
        secounds: "52".obs),
    OfferscreenItemModel(
        image: ImageConstant.imgRecomendedProduct.obs,
        offer: "90% Off Super Mega Sale".obs)
  ]);
}
