import '../../../core/app_export.dart';
import 'orders_item_model.dart';

/// This class defines the variables used in the [order_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderModel {
  Rx<List<OrdersItemModel>> ordersItemList = Rx([
    OrdersItemModel(
        price: "SDG1345KJD".obs,
        month: "Order at E-com : August 1, 2017".obs,
        orderStatus: "Order Status".obs,
        shipping: "Shipping".obs,
        items: "Items".obs,
        purchasedCount: "1 Items purchased".obs,
        price1: "Price".obs,
        price2: "299,43".obs),
    OrdersItemModel(
        price: "SDG1345KJD".obs,
        month: "Order at E-com : August 1, 2017".obs,
        orderStatus: "Order Status".obs,
        shipping: "Shipping".obs,
        items: "Items".obs,
        purchasedCount: "1 Items purchased".obs,
        price1: "Price".obs,
        price2: "299,43".obs),
    OrdersItemModel(
        price: "SDG1345KJD".obs,
        month: "Order at E-com : August 1, 2017".obs,
        orderStatus: "Order Status".obs,
        shipping: "Shipping".obs,
        items: "Items".obs,
        purchasedCount: "1 Items purchased".obs,
        price1: "Price".obs,
        price2: "299,43".obs)
  ]);
}
