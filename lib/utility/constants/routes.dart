import 'package:bilal_masala/View/Items_screen.dart';
import 'package:bilal_masala/View/billing_screen.dart';
import 'package:get/get.dart';
import 'package:bilal_masala/View/home_screen.dart';

class Routes {
  static const String home = '/home';
  static const String billing = '/billing';
  static const String itemsScreen= '/items';

  static final List<GetPage> pages = [
    GetPage(name: home, page: () => HomeScreen()),
    GetPage(name: billing, page: () => BillingScreen()),
    GetPage(name: itemsScreen, page: () => ItemsScreen()),
  ];
}
