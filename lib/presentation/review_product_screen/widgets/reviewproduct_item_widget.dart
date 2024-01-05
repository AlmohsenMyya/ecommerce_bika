import '../controller/review_product_controller.dart';
import '../models/reviewproduct_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReviewproductItemWidget extends StatelessWidget {
  ReviewproductItemWidget(
    this.reviewproductItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReviewproductItemModel reviewproductItemModelObj;

  var controller = Get.find<ReviewProductController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: reviewproductItemModelObj.jamesLawson!.value,
                height: 48.adaptSize,
                width: 48.adaptSize,
                radius: BorderRadius.circular(
                  24.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 2.v,
                bottom: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      reviewproductItemModelObj.jamesLawson1!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  CustomRatingBar(
                    ignoreGestures: true,
                    initialRating: 5,
                    itemSize: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        SizedBox(
          width: 333.h,
          child: Obx(
            () => Text(
              reviewproductItemModelObj.description!.value,
              maxLines: 5,
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
            reviewproductItemModelObj.month!.value,
            style: CustomTextStyles.bodySmall10,
          ),
        ),
      ],
    );
  }
}
