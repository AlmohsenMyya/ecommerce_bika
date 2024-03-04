import '../controller/address_controller.dart';
import '../models/addresses_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddressesItemWidget extends StatelessWidget {
  AddressesItemWidget(
    this.addressesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddressesItemModel addressesItemModelObj;

  var controller = Get.find<AddressController>();

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
              addressesItemModelObj.priscekila!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 19.v),
          Container(
            width: 264.h,
            margin: EdgeInsets.only(right: 30.h),
            child: Obx(
              () => Text(
                addressesItemModelObj.address!.value,
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
              addressesItemModelObj.mobileNo!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 19.v),
          Row(
            children: [
              Obx(
                () => Text(
                  addressesItemModelObj.edit!.value,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.h,right: 16.h),
                child: Obx(
                  () => Text(
                    addressesItemModelObj.delete!.value,
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
