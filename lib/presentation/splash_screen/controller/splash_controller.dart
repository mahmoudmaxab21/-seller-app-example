import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/presentation/splash_screen/models/splash_model.dart';

/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.signInPasswordScreen,
    );
  }
}
