import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/custom_grid_delegate.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class PresetSizes extends StatelessWidget {
  const PresetSizes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(height: 20),
    
          // QUANTITY AND PRICE
          SizedBox(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                    crossAxisCount: 1,
                    mainAxisSpacing: 20,
                  ),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.darkGrey,
                    border: Border.all(
                      color: AppColor.grey,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "100g",
                        style: TypographyPoppins.regular
                            .copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        "₹70",
                        style: TypographyPoppins.regular
                            .copyWith(
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
    
          SizedBox(height: 25),
    
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
      );
  }
}
