import '../controller/notification_activity_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationActivityScreen.
///
/// This class ensures that the NotificationActivityController is created when the
/// NotificationActivityScreen is first loaded.
class NotificationActivityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationActivityController());
  }
}
