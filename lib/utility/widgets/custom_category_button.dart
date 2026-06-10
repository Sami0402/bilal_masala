import 'package:bilal_masala/Controllers/home_controller.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';

class CustomCategoryButton extends StatelessWidget {
  const 
  CustomCategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    final HomeController controller = Get.find<HomeController>();

    return SizedBox(
      height: SizeConfig.screenHeight * 0.08,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        padding: EdgeInsets.only(
          left: SizeConfig.screenWidth * 0.05,
          right: SizeConfig.screenWidth * 0.02,
        ),
        itemBuilder: (context, index) {
          return Obx(
            () => Padding(
              padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.035),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: controller.currentCategoryInd.value == index
                        ? AppColor.orangelight
                        : AppColor.charcoal,
                    width: 2.0,
                  ),
                ),
                padding: EdgeInsets.all(3.0),
                child: ElevatedButton(
                  onPressed: () {
                    controller.currentCategoryInd.value = index;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        controller.currentCategoryInd.value == index
                        ? AppColor.orangelight
                        : AppColor.charcoal,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      side: BorderSide(color: AppColor.charcoal),
                    ),
                  ),
                  child: Text(
                    controller.categories[index],
                    style: TypographyPoppins.regular.copyWith(
                      fontWeight: FontWeight.w700,
                      color: controller.currentCategoryInd.value == index
                          ? AppColor.white
                          : AppColor.grey,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
