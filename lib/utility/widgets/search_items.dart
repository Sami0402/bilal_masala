import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchItems extends StatelessWidget {
  const SearchItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20).copyWith(
        top: 15,
        // bottom: SizeConfig.screenHeight * 0.01,
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black,
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.screenHeight * 0.027,
              bottom: SizeConfig.screenHeight * 0.027,
              left: SizeConfig.screenWidth * 0.016,
            ),
            child: Icon(CupertinoIcons.search, color: Colors.deepPurple),
          ),
          hintText: 'Search masala by name',
          hintStyle: TypographyPoppins.small.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColor.grey,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(14),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(14),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(14),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
