import '../controller/ship_to_controller.dart';
import '../models/shipto_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShiptoItemWidget extends StatelessWidget {
  ShiptoItemWidget(
    this.shiptoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ShiptoItemModel shiptoItemModelObj;

  var controller = Get.find<ShipToController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              shiptoItemModelObj.priscekila!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 19.v),
          Container(
            width: 264.h,
            margin: EdgeInsets.only(right: 30.h),
            child: Obx(
              () => Text(
                shiptoItemModelObj.address!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.80,
                ),
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Obx(
            () => Text(
              shiptoItemModelObj.mobileNo!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 19.v),
          Row(
            children: [
              Obx(
                () => Text(
                  shiptoItemModelObj.edit!.value,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.h,right: 32.h),
                child: Obx(
                  () => Text(
                    shiptoItemModelObj.delete!.value,
                    style: CustomTextStyles.titleSmallPink300,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
