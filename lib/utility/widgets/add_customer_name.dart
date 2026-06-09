import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:flutter/material.dart';

class AddCustomerName extends StatelessWidget {
  const AddCustomerName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight * 0.1,
      child: TextField(
        decoration: InputDecoration(
          fillColor: AppColor.charcoal,
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.screenWidth * 0.016,
            ),
            child: Icon(Icons.person, color: Colors.green),
          ),
          hintText: 'Customer Name (Optional)',
          hintStyle: TypographyPoppins.small.copyWith(
            fontWeight: FontWeight.w500,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}