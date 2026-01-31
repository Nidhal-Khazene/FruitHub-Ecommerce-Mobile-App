import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../core/widgets/add_and_minus_number.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 95,
      padding: const EdgeInsets.only(
        top: 1,
        bottom: 3,
        right: 16.5,
        left: 17.5,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: ColorData.kBorderColor, width: 1.2),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 73,
            height: 92,
            decoration: const BoxDecoration(color: Color(0xFFF3F5F7)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 10),
              child: Image.asset(Assets.assetsImagesProductsWatermelon),
            ),
          ),
          const SizedBox(width: 17),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("بطيخ", style: AppStyles.bold13),
              const SizedBox(height: 4),
              Text(
                "3 كم",
                style: AppStyles.regular13.copyWith(
                  color: ColorData.kLightSecondaryColor,
                ),
              ),
              const SizedBox(height: 12),
              const AddAndMinusNumber(),
            ],
          ),
          const Expanded(child: SizedBox()),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 5),
              const Icon(
                Iconsax.trash_copy,
                color: Color(0xFF949D9E),
                size: 20,
              ),
              const Expanded(child: SizedBox()),
              Text(
                "60 جنيه",
                style: AppStyles.bold16.copyWith(
                  color: ColorData.kSecondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
