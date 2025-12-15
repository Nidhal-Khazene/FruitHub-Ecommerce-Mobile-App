import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      padding: const EdgeInsets.only(right: 8, top: 8, bottom: 16),
      width: 163,
      height: 214,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Iconsax.heart_copy),
          Image.asset(Assets.assetsImagesStrawberry),
          const SizedBox(height: 24),
          const Column(
            children: [Text("فراولة", style: TextStyles.semiBold13)],
          ),
        ],
      ),
    );
  }
}
