import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/custom_grid_delegate.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/bottom_sheet_content.dart';
import 'package:bilal_masala/utility/widgets/quantity_price_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Items extends StatelessWidget {
  Items({super.key});

  final List<String> masalaName = [
    'Lal Mirchi Powder',
    'Kasmiri Mirchi',
    'Rasgulla Mirichi',
    'Haldi Powder',
    'Garam Masala',
    'Dhaniya Powder',
    'Aamchur Powder',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: masalaName.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.bottomSheet(
              backgroundColor: AppColor.charcoal,
              BottomSheetContent(),
            );
          },
          child: ItemCard(name: masalaName[index], category: "Chilli"),
        );
      },
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.name, required this.category});

  final String name;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.18,
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth * 0.038,
      ).copyWith(top: SizeConfig.screenHeight * 0.020),
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth * 0.040,
        vertical: SizeConfig.screenHeight * 0.010,
      ),

      decoration: BoxDecoration(
        color: AppColor.grey.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 3.0, color: AppColor.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TypographyPoppins.medium.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.018,
                  vertical: SizeConfig.screenHeight * 0.006,
                ),
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
          SizedBox(height: SizeConfig.screenHeight * 0.014),
          // QUANTITY & PRICE
          Row(
            children: [
              QuantityAndPriceChip(quantity: 100, price: 45),
              SizedBox(width: SizeConfig.screenHeight * 0.01),
              QuantityAndPriceChip(quantity: 250, price: 100),
              SizedBox(width: SizeConfig.screenHeight * 0.01),
              QuantityAndPriceChip(quantity: 500, price: 190),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.015),
          // TAP --> PICK SIZE
          Text(
            "Tap to pick size",
            style: TypographyPoppins.label.copyWith(
              color: AppColor.yellow,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
