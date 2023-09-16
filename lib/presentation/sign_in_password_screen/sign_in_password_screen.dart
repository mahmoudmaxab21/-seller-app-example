import 'controller/sign_in_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/widgets/custom_elevated_button.dart';
import 'package:seller_app_example/widgets/custom_text_form_field.dart';
import 'package:seller_app_example/data/models/postLogin/post_post_login_req.dart';
import 'package:seller_app_example/data/models/postLogin/post_post_login_resp.dart';

class SignInPasswordScreen extends GetWidget<SignInPasswordController> {
  const SignInPasswordScreen({Key? key}) : super(key: key);

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
                          controller: controller.friendphoneoneController,
                          margin: getMargin(top: 10),
                          hintText: "msg4".tr,
                          hintStyle: CustomTextStyles.bodyMediumGray700),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("msg5".tr,
                              style: CustomTextStyles.titleLargePrimary)),
                      CustomTextFormField(
                          controller: controller.digitsoneController,
                          margin: getMargin(top: 4),
                          hintText: "msg9".tr,
                          hintStyle: CustomTextStyles.bodyMediumGray700,
                          textInputAction: TextInputAction.done,
                          contentPadding: getPadding(
                              left: 9, top: 19, right: 9, bottom: 19)),
                      Spacer(),
                      CustomElevatedButton(
                          text: "lbl2".tr,
                          margin: getMargin(bottom: 63),
                          onTap: () {
                            login();
                          })
                    ]))));
  }

  /// calls the [https://e66ac4-_app-sandbox.dhiwise.co/device/auth/login] API
  ///
  /// It has [PostPostLoginReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onLoginSuccess()` function.
  /// If the call fails, the function calls the `_onLoginError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> login() async {
    PostPostLoginReq postPostLoginReq = PostPostLoginReq(
      username: controller.friendphoneoneController.text,
      password: controller.digitsoneController.text,
    );
    try {
      await controller.callPostLogin(
        postPostLoginReq.toJson(),
      );
      _onLoginSuccess();
    } on PostPostLoginResp {
      _onLoginError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  /// Navigates to the homePageScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homePageScreen.
  void _onLoginSuccess() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the signInFailedScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the signInFailedScreen.
  void _onLoginError() {
    Get.toNamed(
      AppRoutes.signInFailedScreen,
    );
  }
}
