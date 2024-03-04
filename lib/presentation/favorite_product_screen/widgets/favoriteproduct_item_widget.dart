import '../controller/favorite_product_controller.dart';
import '../models/favoriteproduct_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoriteproductItemWidget extends StatelessWidget {
  FavoriteproductItemWidget(
    this.favoriteproductItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FavoriteproductItemModel favoriteproductItemModelObj;

  var controller = Get.find<FavoriteProductController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: favoriteproductItemModelObj.image!.value,
                height: 133.adaptSize,
                width: 133.adaptSize,
                radius: BorderRadius.circular(
                  5.h,
                ),
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              width: 107.h,
              child: Obx(
                () => Text(
                  favoriteproductItemModelObj.nikeAirMaxReact!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 4.v),
            CustomRatingBar(
              ignoreGestures: true,
              initialRating: 4,
            ),
            SizedBox(height: 18.v),
            Obx(
              () => Text(
                favoriteproductItemModelObj.price!.value,
                style: CustomTextStyles.labelLargePrimary,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 9.v),
                  child: Obx(
                    () => Text(
                      favoriteproductItemModelObj.price1!.value,
                      style: CustomTextStyles.bodySmall10.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 9.v,
                  ),
                  child: Obx(
                    () => Text(
                      favoriteproductItemModelObj.offer!.value,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTrashIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 14.h, right: 14.h),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
