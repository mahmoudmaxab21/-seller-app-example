import 'controller/sign_in_failed_controller.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SignInFailedScreen extends GetWidget<SignInFailedController> {
  const SignInFailedScreen({Key? key})
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
            left: 10,
            top: 45,
            right: 10,
            bottom: 45,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl".tr,
                style: CustomTextStyles.displaySmallRobotoPrimaryBold,
              ),
              Text(
                "msg".tr,
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: getPadding(
                  top: 35,
                ),
                child: Text(
                  "msg2".tr,
                  style: CustomTextStyles.titleLargePrimary,
                ),
              ),
              Container(
                margin: getMargin(
                  top: 6,
                ),
                padding: getPadding(
                  left: 10,
                  top: 14,
                  right: 10,
                  bottom: 14,
                ),
                decoration: AppDecoration.outlineIndigo.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "msg6".tr,
                  style: CustomTextStyles.bodySmallGray700,
                ),
              ),
              Container(
                margin: getMargin(
                  top: 74,
                ),
                padding: getPadding(
                  left: 75,
                  top: 44,
                  right: 75,
                  bottom: 44,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Text(
                        "lbl14".tr,
                        style: CustomTextStyles.displaySmallRobotoOnPrimary,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "lbl15".tr,
                        style: CustomTextStyles.displaySmallRobotoPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                text: "lbl2".tr,
                margin: getMargin(
                  top: 99,
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
