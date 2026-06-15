import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SolidTextButton extends StatelessWidget {
  const SolidTextButton({super.key, required this.text, this.onTap, this.backgroundColor, this.textStyle = TypographyPoppins.small, this.borderColor, this.borderRadius});

  final String text;
  final GestureTapCallback? onTap;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final Color? borderColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: SizeConfig.screenHeight * 0.06,
        width: SizeConfig.screenWidth * 0.27,
        decoration: BoxDecoration(
          borderRadius: borderRadius == null ? BorderRadius.circular(15) : borderRadius!,
          border: Border.all(
            color: borderColor == null ? backgroundColor! : borderColor!,
          ),
          color: backgroundColor,
        ),
        child: Center(
          child: Text(
            text,
            
            style: textStyle,
            
          ),
        ),
      ),
    );
  }
}
