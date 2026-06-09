import 'package:bilal_masala/Controllers/home_controller.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.15,
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth * 0.035,
        vertical: SizeConfig.screenHeight * 0.005,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: AppColor.appbar,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '🌶️ Bilal Masala',
            style: TypographyPoppins.large.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                // DATE
                Text(
                  DateFormat.yMMMMd().format(controller.currentTime.value),
                  style: TypographyPoppins.small.copyWith(
                    color: AppColor.white.withValues(alpha: 0.5),
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // TIME
                Text(
                  DateFormat.jm().format(controller.currentTime.value),
                  style: TypographyPoppins.small.copyWith(
                    color: AppColor.white.withValues(alpha: 0.5),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
