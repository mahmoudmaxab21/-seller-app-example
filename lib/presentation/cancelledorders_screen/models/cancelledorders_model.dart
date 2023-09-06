import 'package:get/get.dart';
import 'orderconfirmati1_item_model.dart';

/// This class defines the variables used in the [cancelledorders_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CancelledordersModel {
  Rx<List<Orderconfirmati1ItemModel>> orderconfirmati1ItemList =
      Rx(List.generate(6, (index) => Orderconfirmati1ItemModel()));
}
