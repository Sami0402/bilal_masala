import 'package:get/get.dart';
import 'package:bilal_masala/View/home_screen.dart';

class Routes {
  static const String home = '/home';

  static final List<GetPage> pages = [
    GetPage(name: home, page: () => HomeScreen()),
  ];
}
