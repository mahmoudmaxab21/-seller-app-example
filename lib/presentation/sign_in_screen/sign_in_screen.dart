import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/widgets/custom_elevated_button.dart';
import 'package:seller_app_example/widgets/custom_text_form_field.dart';

class SignInScreen extends GetWidget<SignInController> {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onError,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 10, top: 45, right: 10, bottom: 45),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl".tr,
                          style:
                              CustomTextStyles.displaySmallRobotoPrimaryBold),
                      Text("msg".tr, style: theme.textTheme.bodySmall),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Text("msg7".tr,
                              style: theme.textTheme.headlineSmall)),
                      CustomTextFormField(
                          controller: controller.friendphonenumbController,
                          margin: getMargin(top: 10),
                          hintText: "msg4".tr,
                          hintStyle: CustomTextStyles.bodyMediumGray700,
                          textInputAction: TextInputAction.done),
                      Spacer(),
                      CustomElevatedButton(
                          text: "msg8".tr,
                          margin: getMargin(bottom: 63),
                          onTap: () {
                            onTaptf();
                          })
                    ]))));
  }

  /// Navigates to the otpScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the otpScreen.
  onTaptf() {
    Get.toNamed(
      AppRoutes.otpScreen,
    );
  }
}
