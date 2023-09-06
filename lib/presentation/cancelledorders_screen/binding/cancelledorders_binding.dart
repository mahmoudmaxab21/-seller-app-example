import '../controller/cancelledorders_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CancelledordersScreen.
///
/// This class ensures that the CancelledordersController is created when the
/// CancelledordersScreen is first loaded.
class CancelledordersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CancelledordersController());
  }
}
