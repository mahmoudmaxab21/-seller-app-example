import 'package:get/get.dart';
import 'cancelledorders_item_model.dart';

/// This class defines the variables used in the [cancelledorders_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CancelledordersModel {
  Rx<List<CancelledordersItemModel>> cancelledordersItemList =
      Rx(List.generate(6, (index) => CancelledordersItemModel()));
}
