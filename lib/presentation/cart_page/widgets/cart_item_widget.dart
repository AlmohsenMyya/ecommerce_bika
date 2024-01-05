import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(
    this.cartItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CartItemModel cartItemModelObj;

  var controller = Get.find<CartController>();

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
          CustomImageView(
            imagePath: ImageConstant.imgImageProduct,
            height: 72.adaptSize,
            width: 72.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 1.v),
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
                        cartItemModelObj.nikeAirZoomPegasus!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelLarge!.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLoveIconPink300,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      bottom: 11.v,
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
                        cartItemModelObj.price!.value,
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
                                    cartItemModelObj.one!.value,
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
