import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/custom_grid_delegate.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            // CHOSE SIZE TEXT
            SizedBox(height: SizeConfig.screenHeight * 0.01),
            Text(
              "Choose size",
              style: TypographyPoppins.small.copyWith(color: AppColor.grey),
            ),

            // QUANTITY AND PRICE
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            SizedBox(
              height: SizeConfig.screenHeight * 0.15,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      crossAxisCount: 2,
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

            // ADD MANUALLY
            SizedBox(height: SizeConfig.screenHeight * 0.015),
            Text(
              "Add Manually",
              style: TypographyPoppins.medium.copyWith(
                // fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // QUANTITY
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hint: Text(
                        "Quantity",
                        style: TypographyPoppins.medium.copyWith(
                          color: AppColor.white,
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: AppColor.grey,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: AppColor.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: AppColor.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ),
                ),

                // PRICE
                SizedBox(width: SizeConfig.screenWidth * 0.03),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hint: Text(
                        "Price",
                        style: TypographyPoppins.medium.copyWith(
                          color: AppColor.white,
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: AppColor.grey,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: AppColor.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: AppColor.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: AppColor.white,
                        ),
                      ),
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
