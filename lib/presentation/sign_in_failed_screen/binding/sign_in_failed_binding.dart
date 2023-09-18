import '../controller/sign_in_failed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInFailedScreen.
///
/// This class ensures that the SignInFailedController is created when the
/// SignInFailedScreen is first loaded.
class SignInFailedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInFailedController());
  }
}
