import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/presentation/deliveredorders_page/models/deliveredorders_model.dart';

/// A controller class for the DeliveredordersPage.
///
/// This class manages the state of the DeliveredordersPage, including the
/// current deliveredordersModelObj
class DeliveredordersController extends GetxController {
  DeliveredordersController(this.deliveredordersModelObj);

  Rx<DeliveredordersModel> deliveredordersModelObj;
}
