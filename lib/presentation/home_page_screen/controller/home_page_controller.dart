import 'package:seller_app_example/core/app_export.dart';
import 'package:seller_app_example/presentation/home_page_screen/models/home_page_model.dart';

/// A controller class for the HomePageScreen.
///
/// This class manages the state of the HomePageScreen, including the
/// current homePageModelObj
class HomePageController extends GetxController {
  Rx<HomePageModel> homePageModelObj = HomePageModel().obs;
}
