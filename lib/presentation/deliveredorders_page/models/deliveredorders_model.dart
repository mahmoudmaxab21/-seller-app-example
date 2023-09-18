import 'package:get/get.dart';
import 'deliveredorders_item_model.dart';

/// This class defines the variables used in the [deliveredorders_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DeliveredordersModel {
  Rx<List<DeliveredordersItemModel>> deliveredordersItemList =
      Rx(List.generate(6, (index) => DeliveredordersItemModel()));
}
