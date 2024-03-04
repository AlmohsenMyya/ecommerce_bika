import '../order_screen/widgets/orders_item_widget.dart';
import 'controller/order_controller.dart';
import 'models/orders_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OrderScreen extends GetWidget<OrderController> {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 15.h, top: 19.v, right: 15.h),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0.v),
                          child: SizedBox(
                              width: 344.h,
                              child: Divider(
                                  height: 1.v,
                                  thickness: 1.v,
                                  color: appTheme.blue50)));
                    },
                    itemCount: controller
                        .orderModelObj.value.ordersItemList.value.length,
                    itemBuilder: (context, index) {
                      OrdersItemModel model = controller
                          .orderModelObj.value.ordersItemList.value[index];
                      return OrdersItemWidget(model);
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(
                left: 16.h, top: 15.v, bottom: 16.v, right: 16.h),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_order".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
