import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/presentation/orders_tab_container_screen/models/orders_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the OrdersTabContainerScreen.
///
/// This class manages the state of the OrdersTabContainerScreen, including the
/// current ordersTabContainerModelObj
class OrdersTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<OrdersTabContainerModel> ordersTabContainerModelObj =
      OrdersTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
