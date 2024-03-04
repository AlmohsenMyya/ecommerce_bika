import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/presentation/order_screen/models/order_model.dart';

/// A controller class for the OrderScreen.
///
/// This class manages the state of the OrderScreen, including the
/// current orderModelObj
class OrderController extends GetxController {
  Rx<OrderModel> orderModelObj = OrderModel().obs;
}
