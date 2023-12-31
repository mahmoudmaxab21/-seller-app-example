import '../deliveredorders_page/widgets/orderconfirmati1_item_widget.dart';
import 'controller/deliveredorders_controller.dart';
import 'models/deliveredorders_model.dart';
import 'models/orderconfirmati1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';

class DeliveredordersPage extends StatelessWidget {
  DeliveredordersPage({Key? key})
      : super(
          key: key,
        );

  DeliveredordersController controller =
      Get.put(DeliveredordersController(DeliveredordersModel().obs));

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
                itemCount: controller.deliveredordersModelObj.value
                    .orderconfirmati1ItemList.value.length,
                itemBuilder: (context, index) {
                  Orderconfirmati1ItemModel model = controller
                      .deliveredordersModelObj
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
      ),
    );
  }
}
