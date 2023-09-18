import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/widgets/custom_elevated_button.dart';
import 'package:seller_app_example/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onError,
        body: Form(
          key: _formKey,
          child: Container(
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
                    top: 26,
                  ),
                  child: Text(
                    "msg7".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                CustomTextFormField(
                  controller: controller.numberController,
                  margin: getMargin(
                    top: 10,
                  ),
                  hintText: "msg4".tr,
                  hintStyle: CustomTextStyles.bodyMediumGray700,
                  textInputAction: TextInputAction.done,
                ),
                Spacer(),
                CustomElevatedButton(
                  text: "msg8".tr,
                  margin: getMargin(
                    bottom: 63,
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
