import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 163,
      height: 214,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: ShapeDecoration(
                color: const Color(0xFFF3F5F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 10,
            right: 9,
            child: Icon(Iconsax.heart_copy, color: Color(0xFF292D32), size: 16),
          ),
          Positioned(
            height: 105,
            width: 114,
            top: 17,
            right: 24,
            child: Image.asset(Assets.assetsImagesStrawberry),
          ),
          const Positioned(
            top: 146,
            right: 7.5,
            child: Text("فراولة", style: TextStyles.semiBold13),
          ),
          Positioned(
            top: 173,
            right: 9,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '30جنية ',
                    style: TextStyles.bold13.copyWith(
                      color: ColorData.kSecondaryColor,
                    ),
                  ),
                  TextSpan(
                    text: '/ الكيلو',
                    style: TextStyles.semiBold13.copyWith(
                      color: ColorData.kThirdlyColor,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Positioned(
            top: 160,
            right: 116.5,
            child: Container(
              height: 36,
              width: 36,
              decoration: ShapeDecoration(
                color: ColorData.kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: const Center(
                child: Icon(Iconsax.add_copy, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
