import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';

class CustomCategoryButton extends StatelessWidget {
  const CustomCategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.orangelight,
              elevation: 10,
              shape: BeveledRectangleBorder(),
            ),
            child: Text('ALL', style: TypographyPoppins.small),
          ),
          SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.orangelight,
              shape: BeveledRectangleBorder(),
              elevation: 10,
            ),
            child: Text('Chilli', style: TypographyPoppins.small),
          ),
          SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.orangelight,
              shape: BeveledRectangleBorder(),
              elevation: 10,
            ),
            child: Text('Blended', style: TypographyPoppins.small),
          ),
          SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.orangelight,
              shape: BeveledRectangleBorder(),
              elevation: 10,
            ),
            child: Text('Whole', style: TypographyPoppins.small),
          ),
          SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.orangelight,
              shape: BeveledRectangleBorder(),
              elevation: 10,
            ),
            child: Text('Seeds', style: TypographyPoppins.small),
          ),
          SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.orangelight,
              shape: BeveledRectangleBorder(),
              elevation: 10,
            ),
            child: Text('Dry Fruits', style: TypographyPoppins.small),
          ),
        ],
      ),
    );
  }
}
