import 'package:bilal_masala/Controllers/home_controller.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 140,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 119, 53, 17),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Obx(
        () => Expanded(
          child: Row(
            children: [
              GestureDetector(
                onTap: () => controller.changeTab(0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 2),
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: controller.selectedTab.value == 0
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(
                    child: Text(
                      "Items",
                      style: TypographyPoppins.small.copyWith(
                        color: controller.selectedTab.value == 0
                            ? AppColor.orangelight
                            : AppColor.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () => controller.changeTab(1),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: controller.selectedTab.value == 1
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(
                    child: Text(
                      "Bill",
                      style: TypographyPoppins.small.copyWith(
                        color: controller.selectedTab.value == 1
                            ? AppColor.orangelight
                            : AppColor.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
