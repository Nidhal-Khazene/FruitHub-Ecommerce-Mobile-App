import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(Assets.assetsImagesPlant),
        ),
        SvgPicture.asset(Assets.assetsImagesLogoSplash),
        SvgPicture.asset(Assets.assetsImagesCirclesSplash),
      ],
    );
  }
}
