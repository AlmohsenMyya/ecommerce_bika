import 'controller/app_navigation_controller.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Register".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Dashboard - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dashboardContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Super Flash Sale".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.superFlashSaleScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Favorite Product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.favoriteProductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product Detail - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productDetailTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Review Product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reviewProductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Write Review Fill".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.writeReviewFillScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification Offer".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationOfferScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification Feed".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationFeedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification Activity".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationActivityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Result".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchResultScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Result No Data Found".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchResultNoDataFoundScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "List Category".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.listCategoryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sort By".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sortByScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Filter - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.filterTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ship To".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shipToScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Choose Credit Or Debit Card".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseCreditOrDebitCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Success Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.successScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPaymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Credit Card And Debit".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.creditCardAndDebitScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Lailyfa Febrina Card".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.lailyfaFebrinaCardScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h,right: 16.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
