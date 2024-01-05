import '../cart_page/widgets/cart_item_widget.dart';import 'controller/cart_controller.dart';import 'models/cart_item_model.dart';import 'models/cart_model.dart';import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_title.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/appbar_trailing_image.dart';import 'package:dhiwise_ecommerce/widgets/app_bar/custom_app_bar.dart';import 'package:dhiwise_ecommerce/widgets/custom_elevated_button.dart';import 'package:dhiwise_ecommerce/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class CartPage extends StatelessWidget {CartPage({Key? key}) : super(key: key);

CartController controller = Get.put(CartController(CartModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v), child: Column(children: [_buildCart(), SizedBox(height: 52.v), _buildCuponCode(), SizedBox(height: 16.v), CustomElevatedButton(text: "lbl_check_out".tr, onPressed: () {onTapCheckOut();}), SizedBox(height: 8.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(title: AppbarTitle(text: "lbl_your_cart".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgNotificationIcon, margin: EdgeInsets.fromLTRB(13.h, 15.v, 13.h, 16.v), onTap: () {onTapNotificationIcon();})]); } 
/// Section Widget
Widget _buildCart() { return Padding(padding: EdgeInsets.only(right: 1.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.cartModelObj.value.cartItemList.value.length, itemBuilder: (context, index) {CartItemModel model = controller.cartModelObj.value.cartItemList.value[index]; return CartItemWidget(model);}))); } 
/// Section Widget
Widget _buildTotalPriceDetails() { return Container(padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineBlue50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [_buildShoppingPrice(shipping: "lbl_items_3".tr, price: "lbl_598_86".tr), SizedBox(height: 16.v), _buildShoppingPrice(shipping: "lbl_shipping".tr, price: "lbl_40_00".tr), SizedBox(height: 14.v), _buildShoppingPrice(shipping: "lbl_import_charges".tr, price: "lbl_128_00".tr), SizedBox(height: 12.v), Divider(), SizedBox(height: 10.v), _buildShoppingPrice(shipping: "lbl_total_price".tr, price: "lbl_766_86".tr)])); } 
/// Section Widget
Widget _buildCuponCode() { return Padding(padding: EdgeInsets.only(right: 1.h), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomTextFormField(controller: controller.cuponCodeController, hintText: "msg_enter_cupon_code".tr, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v))), CustomElevatedButton(width: 87.h, text: "lbl_apply".tr, buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer)]), SizedBox(height: 16.v), _buildTotalPriceDetails()])); } 
/// Common widget
Widget _buildShoppingPrice({required String shipping, required String price, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text(shipping, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray300))), Text(price, style: CustomTextStyles.bodySmallOnPrimary.copyWith(color: theme.colorScheme.onPrimary.withOpacity(1)))]); } 
/// Navigates to the notificationScreen when the action is triggered.
onTapNotificationIcon() { Get.toNamed(AppRoutes.notificationScreen, ); } 
/// Navigates to the shipToScreen when the action is triggered.
onTapCheckOut() { Get.toNamed(AppRoutes.shipToScreen, ); } 
 }
