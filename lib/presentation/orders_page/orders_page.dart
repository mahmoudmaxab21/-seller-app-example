import '../orders_page/widgets/orderconfirmati_item_widget.dart';
import 'controller/orders_controller.dart';
import 'models/orderconfirmati_item_model.dart';
import 'models/orders_model.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';

class OrdersPage extends StatelessWidget {
  OrdersPage({Key? key})
      : super(
          key: key,
        );

  OrdersController controller = Get.put(OrdersController(OrdersModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onError,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnError,
          child: Padding(
            padding: getPadding(
              left: 10,
              top: 40,
              right: 10,
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
                itemCount: controller
                    .ordersModelObj.value.orderconfirmatiItemList.value.length,
                itemBuilder: (context, index) {
                  OrderconfirmatiItemModel model = controller.ordersModelObj
                      .value.orderconfirmatiItemList.value[index];
                  return OrderconfirmatiItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
