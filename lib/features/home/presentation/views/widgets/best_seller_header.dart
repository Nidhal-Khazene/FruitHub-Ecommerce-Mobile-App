import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerHeader extends StatelessWidget {
  const BestSellerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("الأكثر مبيعًا", style: TextStyles.bold13),
        Text(
          "المزيد",
          style: TextStyles.regular13.copyWith(
            color: ColorData.kFontSecondaryColor,
          ),
        ),
      ],
    );
  }
}
