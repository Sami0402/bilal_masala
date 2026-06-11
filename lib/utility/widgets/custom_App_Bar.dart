import 'package:bilal_masala/Controllers/home_controller.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.controller});

  @override
  Size get preferredSize => const Size.fromHeight(110);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // height: SizeConfig.screenHeight * 0.12,
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColor.appbar,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Bilal Masala',
                      style: TypographyPoppins.large.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Raza Tower, Bhusawal',
                      style: TypographyPoppins.small.copyWith(
                        color: AppColor.white.withValues(alpha: 0.5),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 22),
                      // DATE
                      Text(
                        DateFormat.yMMMMd().format(
                          controller.currentTime.value,
                        ),
                        style: TypographyPoppins.small.copyWith(
                          color: AppColor.white.withValues(alpha: 0.5),
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height: 6),

                      // SWITCH BUTTON
                      CustomSwitch(controller: controller),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
