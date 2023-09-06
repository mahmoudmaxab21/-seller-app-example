import 'controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onError,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    padding: getPadding(top: 76),
                    child: Padding(
                        padding: getPadding(left: 10, right: 10, bottom: 257),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    onTapColumn();
                                  },
                                  child: Container(
                                      padding: getPadding(
                                          left: 68,
                                          top: 48,
                                          right: 68,
                                          bottom: 48),
                                      decoration: AppDecoration.outlineBlue
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder30),
                                      child: Padding(
                                          padding: getPadding(top: 10),
                                          child: Text("lbl4".tr,
                                              style: theme
                                                  .textTheme.displaySmall)))),
                              Container(
                                  margin: getMargin(top: 66),
                                  padding: getPadding(
                                      left: 68, top: 48, right: 68, bottom: 48),
                                  decoration: AppDecoration.outlineBlue
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder30),
                                  child: Padding(
                                      padding: getPadding(top: 10),
                                      child: Text("lbl4".tr,
                                          style:
                                              theme.textTheme.displaySmall))),
                              Container(
                                  margin: getMargin(top: 65),
                                  padding: getPadding(
                                      left: 68, top: 48, right: 68, bottom: 48),
                                  decoration: AppDecoration.outlineBlue
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder30),
                                  child: Padding(
                                      padding: getPadding(top: 10),
                                      child: Text("lbl4".tr,
                                          style: theme.textTheme.displaySmall)))
                            ]))))));
  }

  /// Navigates to the warehouseDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the warehouseDetailsScreen.
  onTapColumn() {
    Get.toNamed(
      AppRoutes.warehouseDetailsScreen,
    );
  }
}
