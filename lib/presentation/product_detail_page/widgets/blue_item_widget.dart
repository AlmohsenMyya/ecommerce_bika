import '../controller/product_detail_controller.dart';
import '../models/blue_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlueItemWidget extends StatelessWidget {
  BlueItemWidget(
    this.blueItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BlueItemModel blueItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup475,
        height: 48.adaptSize,
        width: 48.adaptSize,
      ),
    );
  }
}
