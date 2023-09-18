import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/presentation/splash_screen/models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:seller_app_example/data/models/getUserById/get_get_user_by_id_resp.dart';
import 'package:seller_app_example/data/apiClient/api_client.dart';

/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  List<GetGetUserByIdResp> getGetUserByIdResp = <GetGetUserByIdResp>[];

  /// Calls the https://fakestoreapi.com/products API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callGetUserById() async {
    getGetUserByIdResp = await Get.find<ApiClient>().getUserById();
    _handleGetUserByIdSuccess();
  }

  /// handles the success response for the API
  void _handleGetUserByIdSuccess() {}

  /// calls the [https://fakestoreapi.com/products] API
  ///
  /// It has [GetGetUserByIdReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onGetUserByIdSuccess()` function.
  /// If the call fails, the function calls the `_onGetUserByIdError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  @override
  Future<void> onReady() async {
    try {
      await callGetUserById();
      _onGetUserByIdSuccess();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      _onGetUserByIdError();
    }
  }

  void _onGetUserByIdSuccess() {
    Get.offNamed(
      AppRoutes.homePageScreen,
    );
  }

  void _onGetUserByIdError() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
