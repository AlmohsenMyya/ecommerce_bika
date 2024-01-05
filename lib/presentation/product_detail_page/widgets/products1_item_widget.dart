import '../controller/product_detail_controller.dart';
import '../models/products1_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Products1ItemWidget extends StatelessWidget {
  Products1ItemWidget(
    this.products1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Products1ItemModel products1ItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      child: Obx(
        () => CustomImageView(
          imagePath: products1ItemModelObj.productPicture!.value,
          height: 72.adaptSize,
          width: 72.adaptSize,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
      ),
    );
  }
}
