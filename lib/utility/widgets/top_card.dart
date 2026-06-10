import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/add_customer_name.dart';
import 'package:bilal_masala/utility/widgets/solid_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.34,
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
          Text(
            'Tap a product below to add it to the bill',
            style: TypographyPoppins.medium.copyWith(color: AppColor.grey),
          ),

          SizedBox(height: SizeConfig.screenHeight * 0.05),

          // THREE BUTTONS (CLEAR  PRINT BILL  SAVE)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // OutlinedButton(
              //   onPressed: () {},
              //   style: OutlinedButton.styleFrom(
              //     foregroundColor: AppColor.orangelight,
              //     backgroundColor: AppColor.charcoal,
              //     side: BorderSide(color: AppColor.orangelight, width: 2),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   child: Text('🗑 Clear', style: TypographyPoppins.small),
              // ),
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: AppColor.grey.withValues(alpha: 0.2),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   child: Text('🖨️ Print Bill', style: TypographyPoppins.small),
              // ),
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: AppColor.grey.withValues(alpha: 0.2),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   child: Text('💾 save', style: TypographyPoppins.small),
              // ),
              SolidTextButton(text: "🗑 Clear"),
              SolidTextButton(text: "🖨️ Print Bill"),
              SolidTextButton(text: "💾 save"),
            ],
          ),
        ],
      ),
    );
  }
}
