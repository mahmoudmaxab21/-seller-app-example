import '../controller/warehouse_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WarehouseDetailsScreen.
///
/// This class ensures that the WarehouseDetailsController is created when the
/// WarehouseDetailsScreen is first loaded.
class WarehouseDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WarehouseDetailsController());
  }
}
