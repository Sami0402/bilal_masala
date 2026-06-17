import 'package:bilal_masala/Controllers/home_controller.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/constants/validation.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class EditProduct extends StatelessWidget {
  const EditProduct({
    super.key,
    required this.controller,
    required this.categoryList,
  });

  final HomeController controller;
  final List<String> categoryList;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    void customValidation() {
      if (_formKey.currentState!.validate()) {
        print('Product Succesfully Edited');
      }
    }

    return Expanded(
      child: InkWell(
        onTap: () {
          Get.bottomSheet(
            Container(
              // height: 100,
              width: SizeConfig.screenWidth,
              padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 25),
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
                        validator: Validations.editProductName,
                        onChanged: (value) {
                          controller.checkIsSaveActive();
                        },
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
                              controller: controller.editSize,
                              validator: Validations.editSize,
                              onChanged: (value) {
                                controller.checkIsSaveActive();
                              },
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
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              controller: controller.editPrice,
                              validator: Validations.editPrice,
                              onChanged: (value) {
                                controller.checkIsSaveActive();
                              },
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
                              onTap: Get.back,
                              text: 'Cancel',
                              textStyle: TypographyPoppins.small.copyWith(
                                color: AppColor.grey,
                              ),
                              backgroundColor: Colors.transparent,
                              borderColor: AppColor.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Obx(
                              () => SolidTextButton(
                                onTap: customValidation,
                                text: 'Save Changes',
                                textStyle: TypographyPoppins.small.copyWith(
                                  color: AppColor.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                backgroundColor:
                                    controller.isSaveActive.value == null ||
                                        controller.isSaveActive.value == false
                                    ? AppColor.grey
                                    : AppColor.orangelight,
                                borderRadius: BorderRadius.circular(10),
                              ),
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
    );
  }
}
