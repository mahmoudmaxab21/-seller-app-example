import 'controller/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/core/utils/validation_functions.dart';
import 'package:seller_app_example/widgets/custom_elevated_button.dart';
import 'package:seller_app_example/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class OtpScreen extends GetWidget<OtpController> {
  OtpScreen({Key? key})
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
              top: 53,
              right: 10,
              bottom: 53,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl".tr,
                  style: CustomTextStyles.titleLargePrimary_1,
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "msg".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 37,
                  ),
                  child: Text(
                    "msg5".tr,
                    style: CustomTextStyles.titleLargePrimary,
                  ),
                ),
                CustomTextFormField(
                  controller: controller.tfController,
                  margin: getMargin(
                    top: 4,
                  ),
                  hintText: "msg9".tr,
                  hintStyle: CustomTextStyles.bodySmallGray700,
                  contentPadding: getPadding(
                    left: 10,
                    top: 15,
                    right: 10,
                    bottom: 15,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  text: "lbl2".tr,
                  margin: getMargin(
                    bottom: 52,
                  ),
                ),
                CustomTextFormField(
                  width: getHorizontalSize(600),
                  controller: controller.tfController1,
                  margin: getMargin(
                    top: 10,
                  ),
                  hintText: "msg9".tr,
                  hintStyle: CustomTextStyles.bodySmallGray700,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.centerLeft,
                  validator: (value) {
                    if (value == null ||
                        (!isMobileNumber(value, isRequired: true))) {
                      return "Please enter valid mobile number";
                    }
                    return null;
                  },
                  contentPadding: getPadding(
                    left: 10,
                    top: 15,
                    right: 10,
                    bottom: 15,
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
