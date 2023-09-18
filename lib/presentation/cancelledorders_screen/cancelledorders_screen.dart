import '../cancelledorders_screen/widgets/orderconfirmati1_item_widget.dart';
import 'controller/cancelledorders_controller.dart';
import 'models/orderconfirmati1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CancelledordersScreen extends GetWidget<CancelledordersController> {
  const CancelledordersScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onError,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 8,
            top: 23,
            right: 8,
            bottom: 23,
          ),
          child: Padding(
            padding: getPadding(
              left: 2,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 8,
                  ),
                  child: Text(
                    "lbl9".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: getPadding(
                          left: 30,
                          top: 18,
                          right: 30,
                          bottom: 18,
                        ),
                        decoration: AppDecoration.outlineIndigoA700,
                        child: Text(
                          "lbl16".tr,
                          style: CustomTextStyles.bodyMediumInterWhiteA700,
                        ),
                      ),
                      Container(
                        padding: getPadding(
                          left: 23,
                          top: 16,
                          right: 23,
                          bottom: 16,
                        ),
                        decoration: AppDecoration.outlineIndigoA7001,
                        child: Text(
                          "lbl17".tr,
                          style: CustomTextStyles.bodyMediumInterBlue700,
                        ),
                      ),
                      Container(
                        padding: getPadding(
                          left: 13,
                          top: 18,
                          right: 13,
                          bottom: 18,
                        ),
                        decoration: AppDecoration.outlineIndigoA7001,
                        child: Text(
                          "lbl18".tr,
                          style: CustomTextStyles.bodyMediumInterBlue700,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: getPadding(
                      top: 40,
                      right: 2,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: getVerticalSize(27),
                          );
                        },
                        itemCount: controller.cancelledordersModelObj.value
                            .orderconfirmati1ItemList.value.length,
                        itemBuilder: (context, index) {
                          Orderconfirmati1ItemModel model = controller
                              .cancelledordersModelObj
                              .value
                              .orderconfirmati1ItemList
                              .value[index];
                          return Orderconfirmati1ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
