import '../controller/sign_in_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInPasswordScreen.
///
/// This class ensures that the SignInPasswordController is created when the
/// SignInPasswordScreen is first loaded.
class SignInPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInPasswordController());
  }
}
