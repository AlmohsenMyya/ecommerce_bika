import '../controller/super_flash_sale_controller.dart';
import '../models/superflashsale_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SuperflashsaleItemWidget extends StatelessWidget {
  SuperflashsaleItemWidget(
    this.superflashsaleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SuperflashsaleItemModel superflashsaleItemModelObj;

  var controller = Get.find<SuperFlashSaleController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: superflashsaleItemModelObj.image!.value,
              height: 206.v,
              width: 343.h,
              radius: BorderRadius.circular(
                5.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h, right: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 209.h,
                    child: Obx(
                      () => Text(
                        superflashsaleItemModelObj.offer!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineSmall!.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Row(
                    children: [
                      Container(
                        width: 42.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 8.v,
                        ),
                        decoration:
                            AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Obx(
                          () => Text(
                            superflashsaleItemModelObj.clock!.value,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 10.v,
                          bottom: 9.v,
                        ),
                        child: Obx(
                          () => Text(
                            superflashsaleItemModelObj.text!.value,
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer,
                          ),
                        ),
                      ),
                      Container(
                        width: 42.h,
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 8.v,
                        ),
                        decoration:
                            AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Obx(
                          () => Text(
                            superflashsaleItemModelObj.minutes!.value,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 10.v,
                          bottom: 9.v,
                        ),
                        child: Obx(
                          () => Text(
                            superflashsaleItemModelObj.text1!.value,
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer,
                          ),
                        ),
                      ),
                      Container(
                        width: 42.h,
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 8.v,
                        ),
                        decoration:
                            AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Obx(
                          () => Text(
                            superflashsaleItemModelObj.secounds!.value,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
