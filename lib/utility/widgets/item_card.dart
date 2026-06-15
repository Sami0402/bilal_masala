import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/quantity_price_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.name, required this.category});

  final String name;
  final String category;

  @override
  Widget build(BuildContext context) {
    List<String> categoryList = [
      'Chilli',
      'Basic',
      'Whole',
      'Blended',
      'Special',
    ];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),

      decoration: BoxDecoration(
        color: AppColor.grey.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 3.0, color: AppColor.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // NAME AND CATEGORY
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ).copyWith(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TypographyPoppins.medium.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // CATEGORY
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    category,
                    style: TypographyPoppins.label.copyWith(
                      color: AppColor.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // QUANTITY & PRICE
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ).copyWith(top: 15),
            child: Row(
              children: [
                QuantityAndPriceChip(quantity: 100, price: 45),
                const SizedBox(width: 8),
                QuantityAndPriceChip(quantity: 250, price: 100),
                const SizedBox(width: 8),
                QuantityAndPriceChip(quantity: 500, price: 190),
              ],
            ),
          ),
          // TAP --> PICK SIZE
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ).copyWith(top: 15),
            child: Text(
              "Tap to pick size",
              style: TypographyPoppins.label.copyWith(
                color: AppColor.yellow,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 13),

          // EDIT AND DELETE BUTTONS
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        // height: 100,
                        width: SizeConfig.screenWidth,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
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
                          children: [
                            Text(
                              'Edit Product',
                              style: TypographyPoppins.medium.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 12),
                           

                            // PRODUCT NAME
                            TextFormField(

                            ),
                            // CATEGORY
                            SizedBox(
                              height: 50,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: categoryList.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.red),
                                    ),
                                    child: Center(
                                      child: Text(
                                        categoryList[index],
                                        style: TypographyPoppins.small.copyWith(
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 12),
                            // VARIANTS (SIZE & PRIZE)

                            // 'ADD VARIANT' BUTTON

                            // CANCEL & SAVE CHANGES
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1, color: AppColor.grey),
                        right: BorderSide(width: 0.5, color: AppColor.grey),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Edit',
                        style: TypographyPoppins.small.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: InkWell(
                  onTap: () {
                    // TODO SAMI SHAIKH
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1, color: AppColor.grey),
                        left: BorderSide(width: 0.5, color: AppColor.grey),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Del',
                        style: TypographyPoppins.small.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
