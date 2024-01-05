import '../controller/order_details_controller.dart';
import '../models/product_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductItemWidget extends StatelessWidget {
  ProductItemWidget(
    this.productItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductItemModel productItemModelObj;

  var controller = Get.find<OrderDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: productItemModelObj.image!.value,
              height: 72.adaptSize,
              width: 72.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 1.v),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.h,
                    child: Obx(
                      () => Text(
                        productItemModelObj.nikeAirZoomPegasus!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelLarge!.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: productItemModelObj.image1!.value,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        bottom: 11.v,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTrashIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      bottom: 11.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 227.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => Text(
                        productItemModelObj.price!.value,
                        style: CustomTextStyles.labelLargePrimary,
                      ),
                    ),
                    Spacer(),
                    CustomIconButton(
                      height: 20.v,
                      width: 33.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlue50,
                      ),
                    ),
                    SizedBox(
                      height: 20.v,
                      width: 41.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 20.v,
                              width: 41.h,
                              decoration: BoxDecoration(
                                color: appTheme.blue50,
                                border: Border.all(
                                  color: appTheme.blue50,
                                  width: 1.h,
                                  strokeAlign: strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(right: 17.h),
                                child: Obx(
                                  () => Text(
                                    productItemModelObj.one!.value,
                                    style:
                                        CustomTextStyles.bodySmallOnPrimary_2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomIconButton(
                      height: 20.v,
                      width: 33.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlue50,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
