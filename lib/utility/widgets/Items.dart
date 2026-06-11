import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/custom_grid_delegate.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/bottom_sheet_content.dart';
import 'package:bilal_masala/utility/widgets/item_card.dart';
import 'package:bilal_masala/utility/widgets/quantity_price_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ItemsList extends StatelessWidget {
  ItemsList({super.key});

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

