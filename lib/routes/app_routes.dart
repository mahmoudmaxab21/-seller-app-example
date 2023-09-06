import 'package:seller_app_example/presentation/splash_screen/splash_screen.dart';
import 'package:seller_app_example/presentation/splash_screen/binding/splash_binding.dart';
import 'package:seller_app_example/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:seller_app_example/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:seller_app_example/presentation/otp_screen/otp_screen.dart';
import 'package:seller_app_example/presentation/otp_screen/binding/otp_binding.dart';
import 'package:seller_app_example/presentation/home_page_screen/home_page_screen.dart';
import 'package:seller_app_example/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:seller_app_example/presentation/warehouse_details_screen/warehouse_details_screen.dart';
import 'package:seller_app_example/presentation/warehouse_details_screen/binding/warehouse_details_binding.dart';
import 'package:seller_app_example/presentation/orders_tab_container_screen/orders_tab_container_screen.dart';
import 'package:seller_app_example/presentation/orders_tab_container_screen/binding/orders_tab_container_binding.dart';
import 'package:seller_app_example/presentation/cancelledorders_screen/cancelledorders_screen.dart';
import 'package:seller_app_example/presentation/cancelledorders_screen/binding/cancelledorders_binding.dart';
import 'package:seller_app_example/presentation/sign_in_failed_screen/sign_in_failed_screen.dart';
import 'package:seller_app_example/presentation/sign_in_failed_screen/binding/sign_in_failed_binding.dart';
import 'package:seller_app_example/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:seller_app_example/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String otpScreen = '/otp_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String warehouseDetailsScreen = '/warehouse_details_screen';

  static const String ordersPage = '/orders_page';

  static const String ordersTabContainerScreen = '/orders_tab_container_screen';

  static const String deliveredordersPage = '/deliveredorders_page';

  static const String cancelledordersScreen = '/cancelledorders_screen';

  static const String signInFailedScreen = '/sign_in_failed_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: warehouseDetailsScreen,
      page: () => WarehouseDetailsScreen(),
      bindings: [
        WarehouseDetailsBinding(),
      ],
    ),
    GetPage(
      name: ordersTabContainerScreen,
      page: () => OrdersTabContainerScreen(),
      bindings: [
        OrdersTabContainerBinding(),
      ],
    ),
    GetPage(
      name: cancelledordersScreen,
      page: () => CancelledordersScreen(),
      bindings: [
        CancelledordersBinding(),
      ],
    ),
    GetPage(
      name: signInFailedScreen,
      page: () => SignInFailedScreen(),
      bindings: [
        SignInFailedBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
