import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/presentation/sign_in_failed_screen/models/sign_in_failed_model.dart';

/// A controller class for the SignInFailedScreen.
///
/// This class manages the state of the SignInFailedScreen, including the
/// current signInFailedModelObj
class SignInFailedController extends GetxController {
  Rx<SignInFailedModel> signInFailedModelObj = SignInFailedModel().obs;
}
