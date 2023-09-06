import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/core/utils/progress_dialog_utils.dart';
import 'package:seller_app_example/data/models/getUserById/get_get_user_by_id_resp.dart';

class ApiClient extends GetConnect {
  var url = "https://fakestoreapi.com";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
    httpClient.addRequestModifier<dynamic>((request) {
      Map<String, String> headers = {
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYTNmOTI0NTNjODViYzEyNjU4ZjNiZSIsInVzZXJuYW1lIjoiSnVkZ2VfQ3JvbmluIiwiaWF0IjoxNjcxNjk3MTcxfQ.hbZLKSsS6Mdj1ndhAf4rm_5we4iWYvKY1VPSo51sQRM",
        "Content-Type": "application/json"
      };
      request.headers.addAll(headers);
      return request;
    });
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

  /// Performs API call for https://fakestoreapi.com/products
  ///
  /// Sends a GET request to the server's 'https://fakestoreapi.com/products' endpoint
  /// with the provided headers and request data
  /// Returns a [GetGetUserByIdResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<List<GetGetUserByIdResp>> getUserById() async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get('$url/products');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return (response.body as List)
            .map((e) => GetGetUserByIdResp.fromJson(e))
            .toList();
      } else {
        throw response.hasError
            ? response.statusText!
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
