import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                Assets.assetsImagesFeaturedImage1,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 24,
              top: 35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "عروض العيد",
                    style: TextStyles.regular13.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "خصم 25%",
                    style: TextStyles.bold19.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 7),
                  CustomButton(
                    borderRadiusValue: 4,
                    width: 116,
                    height: 34,
                    text: "تسوق الان",
                    textStyle: TextStyles.bold13.copyWith(
                      color: ColorData.kPrimaryColor,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
