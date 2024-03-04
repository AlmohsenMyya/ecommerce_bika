import '../controller/product_detail_controller.dart';
import '../models/recomended_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecomendedItemWidget extends StatelessWidget {
  RecomendedItemWidget(
    this.recomendedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecomendedItemModel recomendedItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      width: 141.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: recomendedItemModelObj.image!.value,
              height: 109.adaptSize,
              width: 109.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 105.h,
            child: Obx(
              () => Text(
                recomendedItemModelObj.fSNikeAirMax!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelLarge!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              recomendedItemModelObj.price!.value,
              style: CustomTextStyles.labelLargePrimary,
            ),
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              Obx(
                () => Text(
                  recomendedItemModelObj.price1!.value,
                  style: CustomTextStyles.bodySmall10.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h, right: 8.h),
                child: Obx(
                  () => Text(
                    recomendedItemModelObj.offer!.value,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
