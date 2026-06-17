import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/custom_grid_delegate.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/manual_entry.dart';
import 'package:bilal_masala/utility/widgets/preset_sizes.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    // 0 : 'Preset Size' AND 1 : 'Manual Entry'
    final RxInt selectedOption = 0.obs;

    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.symmetric(
        horizontal: 22,
        // vertical: SizeConfig.screenHeight * 0.035,
      ).copyWith(top: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // MASALA NAME
            Text(
              "Red Chilli Powder",
              style: TypographyPoppins.regular.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),

            // CATEGORY
            Text(
              'Chilli',
              style: TypographyPoppins.label.copyWith(color: AppColor.grey),
            ),
            SizedBox(height: 15),

            // Preset Size And Manual Entry Button
            Obx(
              () => Row(
                children: [
                  Expanded(
                    child: SolidTextButton(
                      text: "Preset Size",
                      onTap: () {
                        selectedOption.value = 0;
                      },
                      borderRadius: BorderRadius.circular(8),
                      borderColor: selectedOption.value == 0
                          ? AppColor.yellow
                          : AppColor.grey,
                      backgroundColor: selectedOption.value == 0
                          ? AppColor.yellow.withValues(alpha: 0.3)
                          : AppColor.charcoal,
                      textStyle: TypographyPoppins.small.copyWith(
                        color: selectedOption.value == 0
                            ? AppColor.yellow
                            : AppColor.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SolidTextButton(
                      text: "Manual entry",
                      onTap: () {
                        selectedOption.value = 1;
                      },
                      borderRadius: BorderRadius.circular(8),
                      borderColor: selectedOption.value == 1
                          ? AppColor.yellow
                          : AppColor.grey,
                      backgroundColor: selectedOption.value == 1
                          ? AppColor.yellow.withValues(alpha: 0.3)
                          : AppColor.charcoal,
                      textStyle: TypographyPoppins.small.copyWith(
                        color: selectedOption.value == 1
                            ? AppColor.yellow
                            : AppColor.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Obx(
              () => SizedBox(
                child: SingleChildScrollView(
                  child: selectedOption.value == 0
                      // PERSET SIZE
                      ? PresetSizes()
                      // MANUAL ENTRY
                      : ManualEntry(),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
