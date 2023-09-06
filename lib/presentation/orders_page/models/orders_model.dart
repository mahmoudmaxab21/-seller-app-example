import 'package:get/get.dart';
import 'orderconfirmati_item_model.dart';

/// This class defines the variables used in the [orders_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OrdersModel {
  Rx<List<OrderconfirmatiItemModel>> orderconfirmatiItemList =
      Rx(List.generate(6, (index) => OrderconfirmatiItemModel()));
}
