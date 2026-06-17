import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class DeleteProduct extends StatelessWidget {
  const DeleteProduct({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Get.bottomSheet(
            Container(
              height: 190,
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
                          onTap: () => Get.back(),
                          borderRadius: BorderRadius.circular(8),
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
                          borderRadius: BorderRadius.circular(8),
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
    );
  }
}