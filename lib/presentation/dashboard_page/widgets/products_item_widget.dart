import '../controller/dashboard_controller.dart';
import '../models/products_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductsItemWidget extends StatelessWidget {
  ProductsItemWidget(
    this.productsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductsItemModel productsItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
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
                  imagePath: productsItemModelObj.image!.value,
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
                    productsItemModelObj.nikeAirMaxReact!.value,
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
                  productsItemModelObj.price!.value,
                  style: CustomTextStyles.labelLargePrimary,
                ),
              ),
              SizedBox(height: 5.v),
              Row(
                children: [
                  Obx(
                    () => Text(
                      productsItemModelObj.price1!.value,
                      style: CustomTextStyles.bodySmall10.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h,right: 8.h),
                    child: Obx(
                      () => Text(
                        productsItemModelObj.offer!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
