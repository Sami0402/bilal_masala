import 'package:bilal_masala/Controllers/home_controller.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/quantity_price_chip.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:dotted_border/dotted_border.dart';
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

    final HomeController controller = HomeController();

    final _formKey = GlobalKey<FormState>();

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
                        ).copyWith(top: 25),
                        decoration: BoxDecoration(
                          color: AppColor.charcoal,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Edit Product',
                                  style: TypographyPoppins.regular.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 12),
                            
                                // PRODUCT NAME
                                Text(
                                  'Product Name',
                                  style: TypographyPoppins.small.copyWith(
                                    color: AppColor.grey,
                                  ),
                                ),
                                SizedBox(height: 8),
                                TextFormField(
                                  controller: controller.editProductName,
                                  
                                  decoration: InputDecoration(
                                    hint: Text(
                                      'e.g. Laal Mirch Powder',
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
                                  ),
                            
                                  style: TypographyPoppins.small.copyWith(
                                    color: AppColor.white,
                                  ),
                                ),
                                SizedBox(height: 18),
                            
                                // CATEGORY
                                
                                // CATEGORY
                                Text(
                                  'Category',
                                  style: TypographyPoppins.small.copyWith(
                                    color: AppColor.grey,
                                  ),
                                ),
                                SizedBox(height: 8),
                                SizedBox(
                                  height: 50,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: categoryList.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 8,
                                        ),
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(color: Colors.red),
                                        ),
                                        child: Center(
                                          child: Text(
                                            categoryList[index],
                                            style: TypographyPoppins.small
                                                .copyWith(color: Colors.red),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: 18),
                            
                                // VARIANTS (SIZE & PRIZE)
                                Text(
                                  'Variants (Size & Price)',
                                  style: TypographyPoppins.small.copyWith(
                                    color: AppColor.grey,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hint: Text(
                                            'Size e.g. 250g',
                                            style: TypographyPoppins.small
                                                .copyWith(color: AppColor.grey),
                                          ),
                            
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            borderSide: BorderSide(
                                              color: AppColor.grey,
                                              width: 3,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            borderSide: BorderSide(
                                              color: AppColor.grey,
                                              width: 2.5,
                                            ),
                                          ),
                                        ),
                            
                                        style: TypographyPoppins.small.copyWith(
                                          color: AppColor.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hint: Text(
                                            '₹ Price',
                                            style: TypographyPoppins.small
                                                .copyWith(color: AppColor.grey),
                                          ),
                            
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            borderSide: BorderSide(
                                              color: AppColor.grey,
                                              width: 3,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            borderSide: BorderSide(
                                              color: AppColor.grey,
                                              width: 2.5,
                                            ),
                                          ),
                                        ),
                            
                                        style: TypographyPoppins.small.copyWith(
                                          color: AppColor.white,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.clear, color: Colors.red),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
                            
                                // 'ADD VARIANT' BUTTON
                                DottedBorder(
                                  options: RoundedRectDottedBorderOptions(
                                    radius: Radius.circular(8),
                                    color: AppColor.yellow,
                                    strokeWidth: 2,
                                    dashPattern: [5, 6],
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 10,
                                    ),
                                  ),
                                  child: Text(
                                    '+ Add Variant',
                                    style: TypographyPoppins.small.copyWith(
                                      color: AppColor.yellow,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 18),
                            
                                // CANCEL & SAVE CHANGES
                                Row(
                                  children: [
                                    Expanded(
                                      child: SolidTextButton(
                                        text: 'Cancel',
                                        textStyle: TypographyPoppins.small
                                            .copyWith(color: AppColor.grey),
                                        backgroundColor: Colors.transparent,
                                        borderColor: AppColor.grey,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: SolidTextButton(
                                        text: 'Save Changes',
                                        textStyle: TypographyPoppins.small
                                            .copyWith(color: AppColor.white),
                                        backgroundColor: AppColor.orangelight,
                                      ),
                                    ),
                                  ],
                                ),
                            
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
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
                    Get.bottomSheet(
                      Container(
                        height: SizeConfig.screenHeight * 0.2,
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
                              "🗑️ Delete Product?",
                              style: TypographyPoppins.medium.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                            // Item to be deleted
                            Text(
                              name,
                              style: TypographyPoppins.small.copyWith(
                                color: AppColor.grey,
                              ),
                            ),
                            SizedBox(height: 15),
                            // Cancel And Delete
                            Row(
                              children: [
                                Expanded(
                                  child: SolidTextButton(
                                    text: "Cancel",
                                    borderColor: AppColor.grey,
                                    textStyle: TypographyPoppins.small.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: SolidTextButton(
                                    onTap: () {},
                                    text: "Delete",
                                    backgroundColor: Colors.red,
                                    textStyle: TypographyPoppins.small.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
