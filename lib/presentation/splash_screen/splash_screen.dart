import 'controller/splash_controller.dart';
import 'package:almohsen_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary.withOpacity(1),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
Spacer(),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 270.adaptSize,
                          width: 270.adaptSize),
                      Spacer()
                    ]))));
  }
}
