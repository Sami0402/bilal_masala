import 'package:bilal_masala/Controllers/home_controller.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/constants/validation.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ManualEntry extends StatelessWidget {
  const ManualEntry({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();
    final _formKey = GlobalKey<FormState>();

    void customValidation() {
      if (_formKey.currentState!.validate()) {}
    }

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          //QUANTITY
          Text(
            'Quantity(how many packets)',
            style: TypographyPoppins.small.copyWith(color: AppColor.grey),
          ),
          SizedBox(height: 8),
          TextFormField(
            controller: controller.manualEntryQuantity,
            validator: Validations.manualEntryQuantity,
            onChanged: (value) {
              controller.checkIsManualEntryActive();
              ;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.black,
              hint: Text(
                'e.g. 100',
                style: TypographyPoppins.small.copyWith(color: AppColor.grey),
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.grey, width: 3),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.grey, width: 2.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.white, width: 2.5),
              ),
            ),

            style: TypographyPoppins.small.copyWith(color: AppColor.white),
          ),
          SizedBox(height: 12),

          // SIZE / WEIGHT
          Text(
            'Size/Weight',
            style: TypographyPoppins.small.copyWith(color: AppColor.grey),
          ),
          SizedBox(height: 8),
          TextFormField(
            controller: controller.manualEntrySize,
            validator: Validations.manualEntrySize,
            onChanged: (value) {
              controller.checkIsManualEntryActive();
              ;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.black,
              hint: Text(
                "e.g 250g",
                style: TypographyPoppins.small.copyWith(color: AppColor.grey),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.grey, width: 3),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.grey, width: 2.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.white, width: 2.5),
              ),
            ),

            style: TypographyPoppins.small.copyWith(color: AppColor.white),
          ),
          SizedBox(height: 12),

          // PRICE
          Text(
            'Price',
            style: TypographyPoppins.small.copyWith(color: AppColor.grey),
          ),
          SizedBox(height: 8),
          TextFormField(
            controller: controller.manualEntryPrice,
            validator: Validations.manualEntryPrice,
            onChanged: (value) {
              controller.checkIsManualEntryActive();
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.black,
              hint: Text(
                "e.g 120rs",
                style: TypographyPoppins.small.copyWith(color: AppColor.grey),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.grey, width: 3),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.grey, width: 2.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.white, width: 2.5),
              ),
            ),

            style: TypographyPoppins.small.copyWith(color: AppColor.white),
          ),
          SizedBox(height: 18),

          // ADD TO BILL
          SizedBox(
            width: SizeConfig.screenWidth,
            child: Obx(
              () => SolidTextButton(
                text: "Add to Bill",
                onTap: () {
                  customValidation();
                },
                borderRadius: BorderRadius.circular(8),
                backgroundColor:
                    controller.isManualEntryActive.value == null ||
                        controller.isManualEntryActive.value == false
                    ? AppColor.grey.withValues(alpha: 0.4)
                    : AppColor.yellow,
                textStyle: TypographyPoppins.small.copyWith(
                  color:
                      controller.isManualEntryActive.value == null ||
                          controller.isManualEntryActive.value == false
                      ? AppColor.grey
                      : AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
