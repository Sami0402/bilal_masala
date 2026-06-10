import 'dart:async';

import 'package:get/get.dart';

class HomeController extends GetxController {

  // DATE AND TIME 
  final Rx<DateTime> currentTime = DateTime.now().obs;
  Timer? timer;

  // FOR CATEGORY BUTTONS
  List categories = [
      'ALL',
      'Chilli',
      'Blended',
      'Whole',
      'Seeds',
      'Dry Fruits',
    ];
  final RxInt currentCategoryInd = 0.obs; 


  @override
  void onInit() {
    super.onInit();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      currentTime.value = DateTime.now();
    });
  }

  @override
  void onClose() {
    super.onClose();
    timer?.cancel();
  }
}
