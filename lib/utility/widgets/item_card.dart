import 'package:bilal_masala/Controllers/home_controller.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/constants/validation.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/delete_product.dart';
import 'package:bilal_masala/utility/widgets/edit_product.dart';
import 'package:bilal_masala/utility/widgets/quantity_price_chip.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/state_manager.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.name, required this.category});

  final String name;
  final String category;

  @override
  Widget build(BuildContext context) {
    final HomeController controller = HomeController();

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
              EditProduct(controller: controller, categoryList: categoryList),

              DeleteProduct(name: name),
            ],
          ),
        ],
      ),
    );
  }
}



