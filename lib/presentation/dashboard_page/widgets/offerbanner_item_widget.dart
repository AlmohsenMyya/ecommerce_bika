import '../controller/dashboard_controller.dart';
import '../models/offerbanner_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OfferbannerItemWidget extends StatelessWidget {
  OfferbannerItemWidget(
    this.offerbannerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OfferbannerItemModel offerbannerItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPromotionImage,
            height: 206.v,
            width: 343.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 209.h,
                    child: Text(
                      "msg_super_flash_sale_50".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 1.50,
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
                        child: Text(
                          "lbl_08".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 10.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "lbl".tr,
                          style: CustomTextStyles.titleSmallOnPrimaryContainer,
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
                        child: Text(
                          "lbl_34".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 10.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "lbl".tr,
                          style: CustomTextStyles.titleSmallOnPrimaryContainer,
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
                        child: Text(
                          "lbl_52".tr,
                          style: theme.textTheme.titleMedium,
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
