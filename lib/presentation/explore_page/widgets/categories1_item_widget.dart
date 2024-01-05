import '../controller/explore_controller.dart';
import '../models/categories1_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categories1ItemWidget extends StatelessWidget {
  Categories1ItemWidget(
    this.categories1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Categories1ItemModel categories1ItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomIconButton(
            height: 70.adaptSize,
            width: 70.adaptSize,
            padding: EdgeInsets.all(23.h),
            child: CustomImageView(
              imagePath: categories1ItemModelObj.womanTShirtIcon!.value,
            ),
          ),
        ),
        SizedBox(height: 7.v),
        Obx(
          () => Text(
            categories1ItemModelObj.tShirt!.value,
            style: CustomTextStyles.labelMediumBluegray300,
          ),
        ),
      ],
    );
  }
}
