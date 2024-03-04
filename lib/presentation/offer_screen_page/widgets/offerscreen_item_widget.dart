import '../controller/offer_screen_controller.dart';
import '../models/offerscreen_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OfferscreenItemWidget extends StatelessWidget {
  OfferscreenItemWidget(
    this.offerscreenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OfferscreenItemModel offerscreenItemModelObj;

  var controller = Get.find<OfferScreenController>();

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
              imagePath: offerscreenItemModelObj.image!.value,
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
                        offerscreenItemModelObj.offer!.value,
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
                            offerscreenItemModelObj.hours!.value,
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
                            offerscreenItemModelObj.text!.value,
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer,
                          ),
                        ),
                      ),
                      Container(
                        width: 42.h,
                        margin: EdgeInsets.only(left: 4.h, right: 4.h),
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
                            offerscreenItemModelObj.minutes!.value,
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
                            offerscreenItemModelObj.text1!.value,
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer,
                          ),
                        ),
                      ),
                      Container(
                        width: 42.h,
                        margin: EdgeInsets.only(left: 4.h, right: 4.h),
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
                            offerscreenItemModelObj.secounds!.value,
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
