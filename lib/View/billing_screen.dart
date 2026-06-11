import 'package:bilal_masala/View/home_screen.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/add_customer_name.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:bilal_masala/utility/widgets/top_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class BillingScreen extends StatelessWidget {
  const BillingScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

            SizedBox(height: SizeConfig.screenHeight * 0.02),

            // TAP A PRODUCT LINE
            SizedBox(height: SizeConfig.screenHeight * 0.0010),

            // Item Qty line
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
            Divider(color: AppColor.grey),

            ElevatedButton(
              onPressed: () {
                Get.to(() => HomeScreen());
              },
              child: Text("Back to Items"),
            ),

            // THREE BUTTONS (CLEAR  PRINT BILL  SAVE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SolidTextButton(text: "🗑 Clear"),
                SolidTextButton(text: "🖨️ Print Bill"),
                SolidTextButton(text: "💾 save"),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
