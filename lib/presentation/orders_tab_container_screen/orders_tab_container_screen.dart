import 'controller/orders_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/presentation/deliveredorders_page/deliveredorders_page.dart';
import 'package:seller_app_example/presentation/orders_page/orders_page.dart';
import 'package:seller_app_example/widgets/app_bar/appbar_title.dart';
import 'package:seller_app_example/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class OrdersTabContainerScreen extends GetWidget<OrdersTabContainerController> {
  const OrdersTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onError,
        appBar: CustomAppBar(
          actions: [
            AppbarTitle(
              text: "lbl9".tr,
              margin: getMargin(
                left: 16,
                right: 16,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(55),
                width: getHorizontalSize(342),
                margin: getMargin(
                  top: 8,
                ),
                child: TabBar(
                  controller: controller.tabviewController,
                  isScrollable: true,
                  labelColor: appTheme.whiteA700,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(14),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: appTheme.blue700,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(14),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  indicator: BoxDecoration(
                    color: appTheme.blue700,
                    border: Border(
                      bottom: BorderSide(
                        color: appTheme.indigoA700,
                        width: getHorizontalSize(4),
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: theme.colorScheme.primary,
                        spreadRadius: getHorizontalSize(2),
                        blurRadius: getHorizontalSize(2),
                        offset: Offset(
                          0,
                          4,
                        ),
                      ),
                    ],
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl16".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl17".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl18".tr,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: getVerticalSize(769),
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      OrdersPage(),
                      DeliveredordersPage(),
                      OrdersPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
