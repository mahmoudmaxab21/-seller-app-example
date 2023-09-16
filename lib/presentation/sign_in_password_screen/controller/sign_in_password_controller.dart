import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/presentation/sign_in_password_screen/models/sign_in_password_model.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/data/models/postLogin/post_post_login_resp.dart';
import 'package:seller_app_example/data/apiClient/api_client.dart';

/// A controller class for the SignInPasswordScreen.
///
/// This class manages the state of the SignInPasswordScreen, including the
/// current signInPasswordModelObj
class SignInPasswordController extends GetxController {
  TextEditingController friendphoneoneController = TextEditingController();

  TextEditingController digitsoneController = TextEditingController();

  Rx<SignInPasswordModel> signInPasswordModelObj = SignInPasswordModel().obs;

  PostPostLoginResp postPostLoginResp = PostPostLoginResp();

  @override
  void onClose() {
    super.onClose();
    friendphoneoneController.dispose();
    digitsoneController.dispose();
  }

  /// Calls the https://e66ac4-_app-sandbox.dhiwise.co/device/auth/login API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callPostLogin(Map req) async {
    try {
      postPostLoginResp = await Get.find<ApiClient>().postLogin(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handlePostLoginSuccess();
    } on PostPostLoginResp catch (e) {
      postPostLoginResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handlePostLoginSuccess() {
    Get.find<PrefUtils>().setUserID(postPostLoginResp.data?.id ?? 0);
    Get.find<PrefUtils>().setToken(postPostLoginResp.data?.token ?? '');
  }
}
