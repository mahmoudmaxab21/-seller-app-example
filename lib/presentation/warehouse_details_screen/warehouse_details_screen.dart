import 'controller/warehouse_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';

class WarehouseDetailsScreen extends GetWidget<WarehouseDetailsController> {
  const WarehouseDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onError,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 10, top: 151, right: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapColumn();
                          },
                          child: Container(
                              padding: getPadding(
                                  left: 122, top: 38, right: 122, bottom: 38),
                              decoration: AppDecoration.outlineIndigoA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder30),
                              child: Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("lbl9".tr,
                                      style: theme.textTheme.displaySmall)))),
                      Container(
                          margin: getMargin(top: 91, bottom: 5),
                          padding: getPadding(
                              left: 112, top: 38, right: 112, bottom: 38),
                          decoration: AppDecoration.outlineIndigoA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: Padding(
                              padding: getPadding(top: 15),
                              child: Text("lbl8".tr,
                                  style: theme.textTheme.displaySmall)))
                    ]))));
  }

  /// Navigates to the ordersTabContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the ordersTabContainerScreen.
  onTapColumn() {
    Get.toNamed(
      AppRoutes.ordersTabContainerScreen,
    );
  }
}
