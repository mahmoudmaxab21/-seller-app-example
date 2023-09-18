import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/core/utils/progress_dialog_utils.dart';
import 'package:seller_app_example/data/models/postLogin/post_post_login_resp.dart';

class ApiClient extends GetConnect {
  var url = "https://e66ac4-_app-sandbox.dhiwise.co";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  /// Performs API call for https://e66ac4-_app-sandbox.dhiwise.co/device/auth/login
  ///
  /// Sends a POST request to the server's 'https://e66ac4-_app-sandbox.dhiwise.co/device/auth/login' endpoint
  /// with the provided headers and request data
  /// Returns a [PostPostLoginResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostPostLoginResp> postLogin({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/device/auth/login',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostPostLoginResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostPostLoginResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
