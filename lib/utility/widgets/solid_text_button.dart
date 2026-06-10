import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SolidTextButton extends StatelessWidget {
  const SolidTextButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: SizeConfig.screenHeight * 0.06,
        width: SizeConfig.screenWidth * 0.27,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColor.grey.withValues(alpha: 0.2),
        ),
        child: Center(
          child: Text(
            text,
            style: TypographyPoppins.small.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
