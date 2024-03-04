import '../offer_screen_page/widgets/offerscreen_item_widget.dart';
import 'controller/offer_screen_controller.dart';
import 'models/offer_screen_model.dart';
import 'models/offerscreen_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_title.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OfferScreenPage extends StatelessWidget {
  OfferScreenPage({Key? key}) : super(key: key);

  OfferScreenController controller =
      Get.put(OfferScreenController(OfferScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v),
                child: Column(children: [
                  _buildCuponPromotion(),
                  SizedBox(height: 16.v),
                  _buildOfferScreen()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_offer".tr,
            margin: EdgeInsets.only(left: 16.h, right: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotificationIcon,
              margin: EdgeInsets.fromLTRB(13.h, 16.v, 13.h, 15.v),
              onTap: () {
                onTapNotificationIcon();
              })
        ]);
  }

  /// Section Widget
  Widget _buildCuponPromotion() {
    return Container(
        width: 343.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              SizedBox(
                  width: 201.h,
                  child: Text("msg_use_megsl_cupon".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer
                          .copyWith(height: 1.50)))
            ]));
  }

  /// Section Widget
  Widget _buildOfferScreen() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: controller
            .offerScreenModelObj.value.offerscreenItemList.value.length,
        itemBuilder: (context, index) {
          OfferscreenItemModel model = controller
              .offerScreenModelObj.value.offerscreenItemList.value[index];
          return OfferscreenItemWidget(model);
        }));
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapNotificationIcon() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }
}
