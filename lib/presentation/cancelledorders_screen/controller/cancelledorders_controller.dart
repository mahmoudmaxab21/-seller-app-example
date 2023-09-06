import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/presentation/cancelledorders_screen/models/cancelledorders_model.dart';

/// A controller class for the CancelledordersScreen.
///
/// This class manages the state of the CancelledordersScreen, including the
/// current cancelledordersModelObj
class CancelledordersController extends GetxController {
  Rx<CancelledordersModel> cancelledordersModelObj = CancelledordersModel().obs;
}
