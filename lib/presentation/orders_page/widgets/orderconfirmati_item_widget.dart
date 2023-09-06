import '../controller/orders_controller.dart';
import '../models/orderconfirmati_item_model.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';

// ignore: must_be_immutable
class OrderconfirmatiItemWidget extends StatelessWidget {
  OrderconfirmatiItemWidget(
    this.orderconfirmatiItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderconfirmatiItemModel orderconfirmatiItemModelObj;

  var controller = Get.find<OrdersController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 8,
        right: 16,
        bottom: 8,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              right: 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: getPadding(
                    left: 21,
                    top: 1,
                    right: 21,
                    bottom: 1,
                  ),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder13,
                  ),
                  child: Text(
                    "lbl10".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: getPadding(
                    top: 2,
                    bottom: 4,
                  ),
                  child: Text(
                    "lbl_12345".tr,
                    style: CustomTextStyles.bodyLargeThin,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 7,
                    top: 5,
                  ),
                  child: Text(
                    "lbl11".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 11,
              right: 2,
              bottom: 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl12".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    Text(
                      "lbl_5_12_2023".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: getPadding(
                    top: 7,
                    bottom: 9,
                  ),
                  child: Text(
                    "lbl_1_650".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 7,
                    top: 10,
                    bottom: 6,
                  ),
                  child: Text(
                    "lbl13".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
