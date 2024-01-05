import '../filter_page/widgets/buyingformate_item_widget.dart';import '../filter_page/widgets/itemlocation_item_widget.dart';import '../filter_page/widgets/showonly_item_widget.dart';import 'controller/filter_controller.dart';import 'models/buyingformate_item_model.dart';import 'models/filter_model.dart';import 'models/itemlocation_item_model.dart';import 'models/showonly_item_model.dart';import 'package:dhiwise_ecommerce/core/app_export.dart';import 'package:dhiwise_ecommerce/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class FilterPage extends StatelessWidget {FilterPage({Key? key}) : super(key: key);

FilterController controller = Get.put(FilterController(FilterModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(children: [_buildBuyingFormat(), SizedBox(height: 23.v), _buildItemLocation(), SizedBox(height: 25.v), _buildShowOnly(), SizedBox(height: 28.v), CustomElevatedButton(text: "lbl_apply".tr, onPressed: () {onTapApply();})]))]))))); } 
/// Section Widget
Widget _buildBuyingFormat() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_buying_format".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v), Obx(() => Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(controller.filterModelObj.value.buyingformateItemList.value.length, (index) {BuyingformateItemModel model = controller.filterModelObj.value.buyingformateItemList.value[index]; return BuyingformateItemWidget(model);})))]); } 
/// Section Widget
Widget _buildItemLocation() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_item_location".tr, style: theme.textTheme.titleSmall), SizedBox(height: 13.v), Obx(() => Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(controller.filterModelObj.value.itemlocationItemList.value.length, (index) {ItemlocationItemModel model = controller.filterModelObj.value.itemlocationItemList.value[index]; return ItemlocationItemWidget(model);})))]); } 
/// Section Widget
Widget _buildShowOnly() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_show_only".tr, style: theme.textTheme.titleSmall), SizedBox(height: 10.v), Obx(() => Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(controller.filterModelObj.value.showonlyItemList.value.length, (index) {ShowonlyItemModel model = controller.filterModelObj.value.showonlyItemList.value[index]; return ShowonlyItemWidget(model);})))]); } 
/// Navigates to the searchResultScreen when the action is triggered.
onTapApply() { Get.toNamed(AppRoutes.searchResultScreen, ); } 
 }
