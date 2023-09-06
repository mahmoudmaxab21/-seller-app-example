import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/presentation/warehouse_details_screen/models/warehouse_details_model.dart';

/// A controller class for the WarehouseDetailsScreen.
///
/// This class manages the state of the WarehouseDetailsScreen, including the
/// current warehouseDetailsModelObj
class WarehouseDetailsController extends GetxController {
  Rx<WarehouseDetailsModel> warehouseDetailsModelObj =
      WarehouseDetailsModel().obs;
}
