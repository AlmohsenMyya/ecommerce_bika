import '../controller/notification_feed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationFeedScreen.
///
/// This class ensures that the NotificationFeedController is created when the
/// NotificationFeedScreen is first loaded.
class NotificationFeedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationFeedController());
  }
}
