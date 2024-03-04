import 'controller/search_controller.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_title_image.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart' hide SearchController;

class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapTxtNikeAirMaxReact();
                          },
                          child: Text("msg_nike_air_max_2703".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 37.v),
                      Text("msg_nike_air_vapormax".tr,
                          style: theme.textTheme.bodySmall),
                      SizedBox(height: 34.v),
                      Text("msg_nike_air_max_2703".tr,
                          style: theme.textTheme.bodySmall),
                      SizedBox(height: 36.v),
                      Text("msg_nike_air_max_2704".tr,
                          style: theme.textTheme.bodySmall),
                      SizedBox(height: 37.v),
                      Text("msg_nike_air_vapormax2".tr,
                          style: theme.textTheme.bodySmall),
                      SizedBox(height: 35.v),
                      Text("msg_nike_air_max_97".tr,
                          style: theme.textTheme.bodySmall),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 79.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 10.h, right: 16.h),
              child: Row(children: [
                AppbarTitleSearchviewOne(
                    hintText: "lbl_nike_air_max".tr,
                    controller: controller.searchController),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgMicIcon,
                    margin:
                        EdgeInsets.only(left: 28.h, top: 10.v, bottom: 10.v))
              ])),
          SizedBox(height: 17.v),
          SizedBox(width: 369.h, child: Divider())
        ]),
        styleType: Style.bgFill);
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  onTapTxtNikeAirMaxReact() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
    );
  }
}
