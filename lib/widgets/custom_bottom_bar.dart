import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavExplore,
      activeIcon: ImageConstant.imgNavExplore,
      title: "lbl_explore".tr,
      type: BottomBarEnum.Explore,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCartBlueGray300,
      activeIcon: ImageConstant.imgNavCartBlueGray300,
      title: "lbl_cart".tr,
      type: BottomBarEnum.Cart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavOfferBlueGray300,
      activeIcon: ImageConstant.imgNavOfferBlueGray300,
      title: "lbl_offer".tr,
      type: BottomBarEnum.Offer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavAccount,
      activeIcon: ImageConstant.imgNavAccount,
      title: "lbl_account".tr,
      type: BottomBarEnum.Account,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Divider(),
        ),
        Container(
          height: 66.v,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
          child: Obx(
            () => BottomNavigationBar(
              backgroundColor: Colors.transparent,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedFontSize: 0,
              elevation: 0,
              currentIndex: selectedIndex.value,
              type: BottomNavigationBarType.fixed,
              items: List.generate(bottomMenuList.length, (index) {
                return BottomNavigationBarItem(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 23.v,
                        width: 24.h,
                        color: appTheme.blueGray300,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.v),
                        child: Text(
                          bottomMenuList[index].title ?? "",
                          style: CustomTextStyles.bodySmall10.copyWith(
                            color: appTheme.blueGray300,
                          ),
                        ),
                      ),
                    ],
                  ),
                  activeIcon: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: bottomMenuList[index].activeIcon,
                        height: 23.v,
                        width: 24.h,
                        color: theme.colorScheme.primary.withOpacity(1),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          bottomMenuList[index].title ?? "",
                          style: CustomTextStyles.labelMediumPrimary.copyWith(
                            color: theme.colorScheme.primary.withOpacity(1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  label: '',
                );
              }),
              onTap: (index) {
                selectedIndex.value = index;
                onChanged?.call(bottomMenuList[index].type);
              },
            ),
          ),
        ),
      ],
    );
  }
}

enum BottomBarEnum {
  Home,
  Explore,
  Cart,
  Offer,
  Account,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
