import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/custom_grid_delegate.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.55,
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth * 0.060,
        vertical: SizeConfig.screenHeight * 0.035,
      ),
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
            SizedBox(height: SizeConfig.screenHeight * 0.01),
            // Preset Size And Manual Entry Button
            Row(
              children: [
                Expanded(
                  child: SolidTextButton(
                    text: "Preset Size",
                    borderRadius: BorderRadius.circular(8),
                    borderColor: AppColor.grey,
                    textStyle: TypographyPoppins.small.copyWith(
                      backgroundColor: AppColor.charcoal,
                      color: AppColor.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: SizeConfig.screenHeight * 0.0150),
                Expanded(
                  child: SolidTextButton(
                    text: "Manual entry",
                    onTap: () {
                      Get.bottomSheet(
                        Container(
                          height: SizeConfig.screenHeight,
                          width: SizeConfig.screenWidth,
                          padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.screenWidth * 0.060,
                            vertical: SizeConfig.screenHeight * 0.035,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.charcoal,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
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
                              SizedBox(height: SizeConfig.screenHeight * 0.01),
                              Row(
                                children: [
                                  Expanded(
                                    child: SolidTextButton(
                                      text: "Preset Size",
                                      onTap: () => Get.back(),
                                      borderRadius: BorderRadius.circular(8),
                                      borderColor: AppColor.grey,
                                      textStyle: TypographyPoppins.small
                                          .copyWith(
                                            backgroundColor: AppColor.charcoal,
                                            color: AppColor.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.screenHeight * 0.0150,
                                  ),

                                  Expanded(
                                    child: SolidTextButton(
                                      text: "Manual entry",
                                      borderRadius: BorderRadius.circular(8),
                                      borderColor: AppColor.grey,
                                      textStyle: TypographyPoppins.small
                                          .copyWith(
                                            backgroundColor: AppColor.charcoal,
                                            color: AppColor.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: SizeConfig.screenHeight * 0.01),

                              //quantity
                              Text(
                                'Quantity(how many packets)',
                                style: TypographyPoppins.small.copyWith(
                                  color: AppColor.grey,
                                ),
                              ),
                              SizedBox(height: 8),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.black,
                                  hint: Text(
                                    'e.g. 100',
                                    style: TypographyPoppins.small.copyWith(
                                      color: AppColor.grey,
                                    ),
                                  ),

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: AppColor.grey,
                                      width: 3,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: AppColor.grey,
                                      width: 2.5,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: AppColor.white,
                                      width: 2.5,
                                    ),
                                  ),
                                ),

                                style: TypographyPoppins.small.copyWith(
                                  color: AppColor.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Size/Weight',
                                style: TypographyPoppins.small.copyWith(
                                  color: AppColor.grey,
                                ),
                              ),
                              SizedBox(height: 8),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.black,
                                  hint: Text(
                                    "e.g 250g",
                                    style: TypographyPoppins.small.copyWith(
                                      color: AppColor.grey,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: AppColor.grey,
                                      width: 3,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: AppColor.grey,
                                      width: 2.5,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: AppColor.white,
                                      width: 2.5,
                                    ),
                                  ),
                                ),

                                style: TypographyPoppins.small.copyWith(
                                  color: AppColor.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Price',
                                style: TypographyPoppins.small.copyWith(
                                  color: AppColor.grey,
                                ),
                              ),
                              SizedBox(height: 8),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.black,
                                  hint: Text(
                                    "e.g 120rs",
                                    style: TypographyPoppins.small.copyWith(
                                      color: AppColor.grey,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: AppColor.grey,
                                      width: 3,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: AppColor.grey,
                                      width: 2.5,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: AppColor.white,
                                      width: 2.5,
                                    ),
                                  ),
                                ),

                                style: TypographyPoppins.small.copyWith(
                                  color: AppColor.white,
                                ),
                              ),
                              SizedBox(height: 18),
                              Row(
                                children: [
                                  Expanded(
                                    child: SolidTextButton(
                                      text: "Add to Bill",
                                      borderRadius: BorderRadius.circular(8),
                                      borderColor: AppColor.grey,
                                      textStyle: TypographyPoppins.small
                                          .copyWith(
                                            backgroundColor: AppColor.charcoal,
                                            color: AppColor.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ],
                              ),

                              // Row(
                              //   children: [
                              //     Expanded(
                              //       child: SolidTextButton(
                              //         text: "cancel",
                              //         borderRadius: BorderRadius.circular(8),
                              //         borderColor: AppColor.grey,
                              //         textStyle: TypographyPoppins.small
                              //             .copyWith(
                              //               backgroundColor: AppColor.charcoal,
                              //               color: AppColor.grey,
                              //               fontWeight: FontWeight.bold,
                              //             ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(8),
                    borderColor: AppColor.grey,
                    textStyle: TypographyPoppins.small.copyWith(
                      backgroundColor: AppColor.charcoal,
                      color: AppColor.grey,

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: SizeConfig.screenHeight * 0.01),

            // QUANTITY AND PRICE
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            SizedBox(
              height: SizeConfig.screenHeight * 0.15,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      crossAxisCount: 1,
                      crossAxisSpacing: SizeConfig.screenWidth * 0.03,
                      mainAxisSpacing: SizeConfig.screenHeight * 0.025,
                      height: SizeConfig.screenHeight * 0.06,
                    ),
                itemBuilder: (context, index) {
                  return Container(
                    // height: SizeConfig.screenHeight * 0.25,
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.screenWidth * 0.05,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.darkGrey,
                      border: Border.all(color: AppColor.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "100g",
                          style: TypographyPoppins.regular.copyWith(
                            color: AppColor.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "₹70",
                          style: TypographyPoppins.regular.copyWith(
                            color: AppColor.yellow,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Divider(
              thickness: 1.5,
              color: AppColor.grey.withValues(alpha: 0.5),
            ),

            SizedBox(height: SizeConfig.screenHeight * 0.015),

            // Cancel Button
            Row(
              children: [
                Expanded(
                  child: SolidTextButton(
                    text: "Cancel",
                    onTap: () => Get.back(),
                    borderRadius: BorderRadius.circular(8),
                    borderColor: AppColor.grey,
                    textStyle: TypographyPoppins.small.copyWith(
                      backgroundColor: AppColor.charcoal,
                      color: AppColor.grey,
                      fontWeight: FontWeight.bold,
                    ),
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
