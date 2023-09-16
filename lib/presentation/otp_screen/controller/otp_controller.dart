import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/presentation/otp_screen/models/otp_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the OtpScreen.
///
/// This class manages the state of the OtpScreen, including the
/// current otpModelObj
class OtpController extends GetxController {
  TextEditingController tfController = TextEditingController();

  TextEditingController tfController1 = TextEditingController();

  Rx<OtpModel> otpModelObj = OtpModel().obs;

  @override
  void onClose() {
    super.onClose();
    tfController.dispose();
    tfController1.dispose();
  }
}
