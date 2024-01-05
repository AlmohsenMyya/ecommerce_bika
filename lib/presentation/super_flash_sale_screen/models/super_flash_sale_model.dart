import '../../../core/app_export.dart';import 'superflashsale_item_model.dart';/// This class defines the variables used in the [super_flash_sale_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SuperFlashSaleModel {Rx<List<SuperflashsaleItemModel>> superflashsaleItemList = Rx([SuperflashsaleItemModel(image:ImageConstant.imgPromotionImage.obs,offer: "Super Flash Sale\n50% Off".obs,clock: "08".obs,text: ":".obs,minutes: "34".obs,text1: ":".obs,secounds: "52".obs),SuperflashsaleItemModel(image:ImageConstant.imgProductImage3.obs)]);

 }
