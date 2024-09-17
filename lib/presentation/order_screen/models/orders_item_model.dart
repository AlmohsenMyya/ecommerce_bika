import '../../../core/app_export.dart';

/// This class is used in the [orders_item_widget] screen.

class OrdersItemModel {
  OrdersItemModel({
    this.price,
    this.month,
    this.orderStatus,
    this.shipping,
    this.items,
    this.purchasedCount,
    this.price1,
    this.price2,
    this.id,
  }) {
    price = price ?? Rx("SDG1345KJD");
    month = month ?? Rx("Order at E-com : August 1, 2017");
    orderStatus = orderStatus ?? Rx("Order Status");
    shipping = shipping ?? Rx("Shipping");
    items = items ?? Rx("Items");
    purchasedCount = purchasedCount ?? Rx("1 Items purchased");
    price1 = price1 ?? Rx("Price");
    price2 = price2 ?? Rx("299,43");
    id = id ?? Rx("");
  }

  Rx<String>? price;

  Rx<String>? month;

  Rx<String>? orderStatus;

  Rx<String>? shipping;

  Rx<String>? items;

  Rx<String>? purchasedCount;

  Rx<String>? price1;

  Rx<String>? price2;

  Rx<String>? id;
}
