import 'package:bilal_masala/Controllers/home_controller.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddNewProduct extends StatelessWidget {
  const AddNewProduct({super.key, required this.name, required this.category});
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
    return InkWell(
      onTap: () {
        Get.bottomSheet(
          Form(
            key: _formKey,
            child: Container(
              height: SizeConfig.screenHeight * 0.9,
              width: SizeConfig.screenWidth,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: AppColor.charcoal,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '➕ New Product',
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
                                style: TypographyPoppins.small.copyWith(
                                  color: Colors.red,
                                ),
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
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hint: Text(
                                '₹ Price',
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
                    // Cancel And Create Product
                    Row(
                      children: [
                        Expanded(
                          child: SolidTextButton(
                            text: 'Cancel',
                            textStyle: TypographyPoppins.small.copyWith(
                              color: AppColor.grey,
                            ),
                            backgroundColor: Colors.transparent,
                            borderColor: AppColor.grey,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: SolidTextButton(
                            text: '✅ Create Product',
                            textStyle: TypographyPoppins.small.copyWith(
                              color: AppColor.white,
                            ),
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
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        height: 150,
        child: DottedBorder(
          options: const RoundedRectDottedBorderOptions(
            radius: Radius.circular(8),
            color: AppColor.yellow,
            strokeWidth: 2,
            dashPattern: [5, 6],
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          ),
          child: Center(
            child: Text(
              '+ New Product',
              style: TypographyPoppins.small.copyWith(
                color: AppColor.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
