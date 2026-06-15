import 'dart:async';

import 'package:flutter/cupertino.dart';
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

  // EDIT BOTTOMSHEET
  final TextEditingController editProductName = TextEditingController();
  final TextEditingController editSize = TextEditingController();
  final TextEditingController editPrice = TextEditingController();
  

  // PAGE VIEW
  final RxInt selectedTab = 0.obs;
  final PageController pageController = PageController();
  void changeTab(int index) {
    selectedTab.value = index;
    pageController.jumpToPage(index);
  }
  void onPageChanged(int index){
    selectedTab.value = index;
  }
  
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
