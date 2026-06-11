import 'package:bilal_masala/Controllers/home_controller.dart';
import 'package:bilal_masala/View/home_screen.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/add_customer_name.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:bilal_masala/utility/widgets/top_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class BillingScreen extends StatelessWidget {
  const BillingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(
          color: AppColor.charcoal,
          border: Border(bottom: BorderSide(width: 3.0, color: AppColor.grey)),
        ),
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.04)
            .copyWith(
              top: SizeConfig.screenHeight * 0.03,
              // bottom: SizeConfig.screenHeight * 0.01,
            ),
        child: Column(
          children: [
            // CUSTOMER NAME
            AddCustomerName(),

            SizedBox(height: 15),

            // ITEMS INDEXING
            Row(
              children: [
                Text('Item', style: TypographyPoppins.small),
                SizedBox(width: SizeConfig.screenWidth * 0.3),
                Text('Qty', style: TypographyPoppins.small),
                SizedBox(width: SizeConfig.screenWidth * 0.15),
                Text('Rate', style: TypographyPoppins.small),
                SizedBox(width: SizeConfig.screenWidth * 0.15),
                Text('Amt', style: TypographyPoppins.small),
              ],
            ),

            Divider(color: AppColor.grey.withValues(alpha: 0.5)),

            // CART PNG
            SizedBox(height: 54),
            SizedBox(
              height: SizeConfig.screenHeight * 0.09,
              child: Image.asset(
                alignment: AlignmentGeometry.topCenter,
                "assets/images/cart.png",
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Bill is empty",
              style: TypographyPoppins.regular.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Go to Items screen to add products",
              style: TypographyPoppins.small.copyWith(color: AppColor.grey),
            ),

            // 'BACT TO ITEMS' BUTTON
            SizedBox(height: 18),
            SizedBox(
              height: 55,
              width: 190,
              child: SolidTextButton(
                text: "<  Back to Items",
                textStyle: TypographyPoppins.medium.copyWith(
                  fontWeight: FontWeight.w700,
                ),
                backgroundColor: AppColor.orangelight,
                onTap: () {
                  controller.changeTab(0);
                },
              ),
            ),

            Spacer(),
            // THREE BUTTONS (CLEAR  PRINT BILL  SAVE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SolidTextButton(
                  text: "🗑 Clear",
                  backgroundColor: Colors.red,
                  textStyle: TypographyPoppins.small.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SolidTextButton(
                  text: "🖨️ Print Bill",
                  backgroundColor: AppColor.yellow,
                  textStyle: TypographyPoppins.small.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SolidTextButton(
                  text: "💾 save",
                  backgroundColor: Colors.green,
                  textStyle: TypographyPoppins.small.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.04),
          ],
        ),
      ),
    );
  }
}
