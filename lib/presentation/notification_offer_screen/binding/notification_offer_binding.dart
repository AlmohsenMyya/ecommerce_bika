import '../controller/notification_offer_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationOfferScreen.
///
/// This class ensures that the NotificationOfferController is created when the
/// NotificationOfferScreen is first loaded.
class NotificationOfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationOfferController());
  }
}
