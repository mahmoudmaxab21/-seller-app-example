import '../controller/cancelledorders_controller.dart';
import '../models/orderconfirmati1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';

// ignore: must_be_immutable
class Orderconfirmati1ItemWidget extends StatelessWidget {
  Orderconfirmati1ItemWidget(
    this.orderconfirmati1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Orderconfirmati1ItemModel orderconfirmati1ItemModelObj;

  var controller = Get.find<CancelledordersController>();

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
                  decoration: AppDecoration.fillRedA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder13,
                  ),
                  child: Text(
                    "lbl10".tr,
                    style: CustomTextStyles.bodyMediumWhiteA700,
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
              bottom: 1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        orderconfirmati1ItemModelObj.deliveryDateTxt.value,
                        style: theme.textTheme.bodyLarge,
                      ),
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
                    bottom: 7,
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
