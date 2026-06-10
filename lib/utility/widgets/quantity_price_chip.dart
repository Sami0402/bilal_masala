import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:flutter/cupertino.dart';

class QuantityAndPriceChip extends StatelessWidget {
  const QuantityAndPriceChip({
    super.key,
    required this.quantity,
    required this.price,
  });

  final int quantity;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth * 0.02,
        vertical: SizeConfig.screenHeight * 0.008,
      ),
      decoration: BoxDecoration(
        color: AppColor.charcoal,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1.5, color: AppColor.grey),
      ),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "${quantity}g  ",
              style: TypographyPoppins.small.copyWith(
                color: AppColor.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: "₹$price",
              style: TypographyPoppins.small.copyWith(
                color: AppColor.yellow,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
